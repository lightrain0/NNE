//#line 2 "/opt/ros/indigo/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
// 
// File autogenerated for the hector_elevation_visualization package 
// by the dynamic_reconfigure package.
// Please do not edit.
// 
// ********************************************************/

#ifndef __hector_elevation_visualization__ELEVATIONVISUALIZATIONCONFIG_H__
#define __hector_elevation_visualization__ELEVATIONVISUALIZATIONCONFIG_H__

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace hector_elevation_visualization
{
  class ElevationVisualizationConfigStatics;
  
  class ElevationVisualizationConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l, 
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }
      
      virtual void clamp(ElevationVisualizationConfig &config, const ElevationVisualizationConfig &max, const ElevationVisualizationConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const ElevationVisualizationConfig &config1, const ElevationVisualizationConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, ElevationVisualizationConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const ElevationVisualizationConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ElevationVisualizationConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const ElevationVisualizationConfig &config) const = 0;
      virtual void getValue(const ElevationVisualizationConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;
    
    template <class T>
    class ParamDescription : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level, 
          std::string a_description, std::string a_edit_method, T ElevationVisualizationConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (ElevationVisualizationConfig::* field);

      virtual void clamp(ElevationVisualizationConfig &config, const ElevationVisualizationConfig &max, const ElevationVisualizationConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;
        
        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const ElevationVisualizationConfig &config1, const ElevationVisualizationConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, ElevationVisualizationConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const ElevationVisualizationConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ElevationVisualizationConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const ElevationVisualizationConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const ElevationVisualizationConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, ElevationVisualizationConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    template<class T, class PT>
    class GroupDescription : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, ElevationVisualizationConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<ElevationVisualizationConfig::AbstractGroupDescriptionConstPtr> groups;
    };
    
class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(ElevationVisualizationConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("max_height_levels"==(*_i)->name){max_height_levels = boost::any_cast<int>(val);}
        if("min_height"==(*_i)->name){min_height = boost::any_cast<double>(val);}
        if("max_height"==(*_i)->name){max_height = boost::any_cast<double>(val);}
        if("color_factor"==(*_i)->name){color_factor = boost::any_cast<double>(val);}
        if("use_color_map"==(*_i)->name){use_color_map = boost::any_cast<bool>(val);}
        if("elevation_map_frame_id"==(*_i)->name){elevation_map_frame_id = boost::any_cast<std::string>(val);}
      }
    }

    int max_height_levels;
double min_height;
double max_height;
double color_factor;
bool use_color_map;
std::string elevation_map_frame_id;

    bool state;
    std::string name;

    
}groups;



//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int max_height_levels;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_height;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_height;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double color_factor;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool use_color_map;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string elevation_map_frame_id;
//#line 218 "/opt/ros/indigo/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("ElevationVisualizationConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }
    
    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }
    
    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const ElevationVisualizationConfig &__max__ = __getMax__();
      const ElevationVisualizationConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const ElevationVisualizationConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }
    
    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const ElevationVisualizationConfig &__getDefault__();
    static const ElevationVisualizationConfig &__getMax__();
    static const ElevationVisualizationConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();
    
  private:
    static const ElevationVisualizationConfigStatics *__get_statics__();
  };
  
  template <> // Max and min are ignored for strings.
  inline void ElevationVisualizationConfig::ParamDescription<std::string>::clamp(ElevationVisualizationConfig &config, const ElevationVisualizationConfig &max, const ElevationVisualizationConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class ElevationVisualizationConfigStatics
  {
    friend class ElevationVisualizationConfig;
    
    ElevationVisualizationConfigStatics()
    {
ElevationVisualizationConfig::GroupDescription<ElevationVisualizationConfig::DEFAULT, ElevationVisualizationConfig> Default("Default", "", 0, 0, true, &ElevationVisualizationConfig::groups);
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_height_levels = 1;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_height_levels = 20;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_height_levels = 10;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<int>("max_height_levels", "int", 0, "max height levels", "", &ElevationVisualizationConfig::max_height_levels)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<int>("max_height_levels", "int", 0, "max height levels", "", &ElevationVisualizationConfig::max_height_levels)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_height = -5.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_height = 10.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_height = -1.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<double>("min_height", "double", 0, "max height value", "", &ElevationVisualizationConfig::min_height)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<double>("min_height", "double", 0, "max height value", "", &ElevationVisualizationConfig::min_height)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_height = -5.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_height = 10.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_height = 1.5;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<double>("max_height", "double", 0, "max height value", "", &ElevationVisualizationConfig::max_height)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<double>("max_height", "double", 0, "max height value", "", &ElevationVisualizationConfig::max_height)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.color_factor = 0.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.color_factor = 1.0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.color_factor = 0.8;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<double>("color_factor", "double", 0, "color_factor", "", &ElevationVisualizationConfig::color_factor)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<double>("color_factor", "double", 0, "color_factor", "", &ElevationVisualizationConfig::color_factor)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.use_color_map = 0;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.use_color_map = 1;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.use_color_map = 1;
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<bool>("use_color_map", "bool", 0, "use_color_map", "", &ElevationVisualizationConfig::use_color_map)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<bool>("use_color_map", "bool", 0, "use_color_map", "", &ElevationVisualizationConfig::use_color_map)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.elevation_map_frame_id = "";
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.elevation_map_frame_id = "";
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.elevation_map_frame_id = "/elevation_map_local";
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<std::string>("elevation_map_frame_id", "str", 0, "elevation_map frame id", "", &ElevationVisualizationConfig::elevation_map_frame_id)));
//#line 293 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ElevationVisualizationConfig::AbstractParamDescriptionConstPtr(new ElevationVisualizationConfig::ParamDescription<std::string>("elevation_map_frame_id", "str", 0, "elevation_map frame id", "", &ElevationVisualizationConfig::elevation_map_frame_id)));
//#line 246 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(ElevationVisualizationConfig::AbstractGroupDescriptionConstPtr(new ElevationVisualizationConfig::GroupDescription<ElevationVisualizationConfig::DEFAULT, ElevationVisualizationConfig>(Default)));
//#line 356 "/opt/ros/indigo/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<ElevationVisualizationConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__); 
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__); 
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__); 
    }
    std::vector<ElevationVisualizationConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<ElevationVisualizationConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    ElevationVisualizationConfig __max__;
    ElevationVisualizationConfig __min__;
    ElevationVisualizationConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const ElevationVisualizationConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static ElevationVisualizationConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &ElevationVisualizationConfig::__getDescriptionMessage__() 
  {
    return __get_statics__()->__description_message__;
  }

  inline const ElevationVisualizationConfig &ElevationVisualizationConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }
  
  inline const ElevationVisualizationConfig &ElevationVisualizationConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }
  
  inline const ElevationVisualizationConfig &ElevationVisualizationConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }
  
  inline const std::vector<ElevationVisualizationConfig::AbstractParamDescriptionConstPtr> &ElevationVisualizationConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<ElevationVisualizationConfig::AbstractGroupDescriptionConstPtr> &ElevationVisualizationConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const ElevationVisualizationConfigStatics *ElevationVisualizationConfig::__get_statics__()
  {
    const static ElevationVisualizationConfigStatics *statics;
  
    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = ElevationVisualizationConfigStatics::get_instance();
    
    return statics;
  }


}

#endif // __ELEVATIONVISUALIZATIONRECONFIGURATOR_H__
