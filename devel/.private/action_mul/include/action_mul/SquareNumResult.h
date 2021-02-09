// Generated by gencpp from file action_mul/SquareNumResult.msg
// DO NOT EDIT!


#ifndef ACTION_MUL_MESSAGE_SQUARENUMRESULT_H
#define ACTION_MUL_MESSAGE_SQUARENUMRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace action_mul
{
template <class ContainerAllocator>
struct SquareNumResult_
{
  typedef SquareNumResult_<ContainerAllocator> Type;

  SquareNumResult_()
    : count(0)  {
    }
  SquareNumResult_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef int64_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::action_mul::SquareNumResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::action_mul::SquareNumResult_<ContainerAllocator> const> ConstPtr;

}; // struct SquareNumResult_

typedef ::action_mul::SquareNumResult_<std::allocator<void> > SquareNumResult;

typedef boost::shared_ptr< ::action_mul::SquareNumResult > SquareNumResultPtr;
typedef boost::shared_ptr< ::action_mul::SquareNumResult const> SquareNumResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::action_mul::SquareNumResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::action_mul::SquareNumResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::action_mul::SquareNumResult_<ContainerAllocator1> & lhs, const ::action_mul::SquareNumResult_<ContainerAllocator2> & rhs)
{
  return lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::action_mul::SquareNumResult_<ContainerAllocator1> & lhs, const ::action_mul::SquareNumResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace action_mul

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::action_mul::SquareNumResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::action_mul::SquareNumResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::action_mul::SquareNumResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::action_mul::SquareNumResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action_mul::SquareNumResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action_mul::SquareNumResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::action_mul::SquareNumResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8dbac33d2eb67bfeeedd516d65fec846";
  }

  static const char* value(const ::action_mul::SquareNumResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8dbac33d2eb67bfeULL;
  static const uint64_t static_value2 = 0xeedd516d65fec846ULL;
};

template<class ContainerAllocator>
struct DataType< ::action_mul::SquareNumResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "action_mul/SquareNumResult";
  }

  static const char* value(const ::action_mul::SquareNumResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::action_mul::SquareNumResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result\n"
"int64 count\n"
;
  }

  static const char* value(const ::action_mul::SquareNumResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::action_mul::SquareNumResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SquareNumResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::action_mul::SquareNumResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::action_mul::SquareNumResult_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<int64_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTION_MUL_MESSAGE_SQUARENUMRESULT_H
