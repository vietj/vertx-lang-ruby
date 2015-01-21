require 'vertx/async_file'
require 'vertx/buffer'
require 'vertx/file_system_props'
require 'vertx/file_props'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.FileSystem
module Vertx
  #  Contains a broad set of operations for manipulating files.<p>
  #  A blocking and non blocking version of each operation is provided.<p>
  #  The non blocking versions take a handler which is called when the operation completes or an error occurs.<p>
  #  The blocking versions return the results, or throw exceptions directly.<p>
  #  It is highly recommended the non blocking versions are used unless you are sure the operation
  #  will not block for a significant period of time.<p>
  #  Instances of FileSystem are thread-safe.<p>
  class FileSystem
    # @private
    # @param j_del [::Vertx::FileSystem] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::FileSystem] the underlying java delegate
    def j_del
      @j_del
    end
    #  Copy a file from the path <code>from</code> to path <code>to</code>, asynchronously.<p>
    #  The copy will fail if the destination already exists.<p>
    # @param [String] from
    # @param [String] to
    # @param [Proc] handler
    # return [self]
    def copy(from,to,&handler)
      if from.class == String
        if to.class == String
          if handler.class == Proc
            @j_del.copy(from,to,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling copy(from,to,handler)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy(from,to,handler)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy(from,to,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#copy}
    # @param [String] from
    # @param [String] to
    # return [self]
    def copy_blocking(from,to)
      if from.class == String
        if to.class == String
          @j_del.copyBlocking(from,to)
          return self
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy_blocking(from,to)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy_blocking(from,to)"
    end
    #  Copy a file from the path <code>from</code> to path <code>to</code>, asynchronously.<p>
    #  If <code>recursive</code> is <code>true</code> and <code>from</code> represents a directory, then the directory and its contents
    #  will be copied recursively to the destination <code>to</code>.<p>
    #  The copy will fail if the destination if the destination already exists.<p>
    # @param [String] from
    # @param [String] to
    # @param [true,false] recursive
    # @param [Proc] handler
    # return [self]
    def copy_recursive(from,to,recursive,&handler)
      if from.class == String
        if to.class == String
          if recursive.class == TrueClass || recursive.class == FalseClass
            if handler.class == Proc
              @j_del.copyRecursive(from,to,recursive,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument handler=#{handler} when calling copy_recursive(from,to,recursive,handler)"
          end
          raise ArgumentError, "Invalid argument recursive=#{recursive} when calling copy_recursive(from,to,recursive,handler)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy_recursive(from,to,recursive,handler)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy_recursive(from,to,recursive,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#copy_recursive}
    # @param [String] from
    # @param [String] to
    # @param [true,false] recursive
    # return [self]
    def copy_recursive_blocking(from,to,recursive)
      if from.class == String
        if to.class == String
          if recursive.class == TrueClass || recursive.class == FalseClass
            @j_del.copyRecursiveBlocking(from,to,recursive)
            return self
          end
          raise ArgumentError, "Invalid argument recursive=#{recursive} when calling copy_recursive_blocking(from,to,recursive)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling copy_recursive_blocking(from,to,recursive)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling copy_recursive_blocking(from,to,recursive)"
    end
    #  Move a file from the path <code>from</code> to path <code>to</code>, asynchronously.<p>
    #  The move will fail if the destination already exists.<p>
    # @param [String] from
    # @param [String] to
    # @param [Proc] handler
    # return [self]
    def move(from,to,&handler)
      if from.class == String
        if to.class == String
          if handler.class == Proc
            @j_del.move(from,to,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling move(from,to,handler)"
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling move(from,to,handler)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling move(from,to,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#move}
    # @param [String] from
    # @param [String] to
    # return [self]
    def move_blocking(from,to)
      if from.class == String
        if to.class == String
          @j_del.moveBlocking(from,to)
          return self
        end
        raise ArgumentError, "Invalid argument to=#{to} when calling move_blocking(from,to)"
      end
      raise ArgumentError, "Invalid argument from=#{from} when calling move_blocking(from,to)"
    end
    #  Truncate the file represented by <code>path</code> to length <code>len</code> in bytes, asynchronously.<p>
    #  The operation will fail if the file does not exist or <code>len</code> is less than <code>zero</code>.
    # @param [String] path
    # @param [Fixnum] len
    # @param [Proc] handler
    # return [self]
    def truncate(path,len,&handler)
      if path.class == String
        if len.class == Fixnum
          if handler.class == Proc
            @j_del.truncate(path,len,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling truncate(path,len,handler)"
        end
        raise ArgumentError, "Invalid argument len=#{len} when calling truncate(path,len,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling truncate(path,len,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#truncate}
    # @param [String] path
    # @param [Fixnum] len
    # return [self]
    def truncate_blocking(path,len)
      if path.class == String
        if len.class == Fixnum
          @j_del.truncateBlocking(path,len)
          return self
        end
        raise ArgumentError, "Invalid argument len=#{len} when calling truncate_blocking(path,len)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling truncate_blocking(path,len)"
    end
    #  Change the permissions on the file represented by <code>path</code> to <code>perms</code>, asynchronously.
    #  The permission String takes the form rwxr-x--- as
    #  specified <a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>.<p>
    # @param [String] path
    # @param [String] perms
    # @param [Proc] handler
    # return [self]
    def chmod(path,perms,&handler)
      if path.class == String
        if perms.class == String
          if handler.class == Proc
            @j_del.chmod(path,perms,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling chmod(path,perms,handler)"
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod(path,perms,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod(path,perms,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem #chmod(String, String, Handler)}
    # @param [String] path
    # @param [String] perms
    # return [self]
    def chmod_blocking(path,perms)
      if path.class == String
        if perms.class == String
          @j_del.chmodBlocking(path,perms)
          return self
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod_blocking(path,perms)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod_blocking(path,perms)"
    end
    #  Change the permissions on the file represented by <code>path</code> to <code>perms</code>, asynchronously.
    #  The permission String takes the form rwxr-x--- as
    #  specified in {<a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>}.<p>
    #  If the file is directory then all contents will also have their permissions changed recursively. Any directory permissions will
    #  be set to <code>dirPerms</code>, whilst any normal file permissions will be set to <code>perms</code>.<p>
    # @param [String] path
    # @param [String] perms
    # @param [String] dirPerms
    # @param [Proc] handler
    # return [self]
    def chmod_recursive(path,perms,dirPerms,&handler)
      if path.class == String
        if perms.class == String
          if dirPerms.class == String
            if handler.class == Proc
              @j_del.chmodRecursive(path,perms,dirPerms,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument handler=#{handler} when calling chmod_recursive(path,perms,dirPerms,handler)"
          end
          raise ArgumentError, "Invalid argument dirPerms=#{dirPerms} when calling chmod_recursive(path,perms,dirPerms,handler)"
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod_recursive(path,perms,dirPerms,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod_recursive(path,perms,dirPerms,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#chmod_recursive}
    # @param [String] path
    # @param [String] perms
    # @param [String] dirPerms
    # return [self]
    def chmod_recursive_blocking(path,perms,dirPerms)
      if path.class == String
        if perms.class == String
          if dirPerms.class == String
            @j_del.chmodRecursiveBlocking(path,perms,dirPerms)
            return self
          end
          raise ArgumentError, "Invalid argument dirPerms=#{dirPerms} when calling chmod_recursive_blocking(path,perms,dirPerms)"
        end
        raise ArgumentError, "Invalid argument perms=#{perms} when calling chmod_recursive_blocking(path,perms,dirPerms)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chmod_recursive_blocking(path,perms,dirPerms)"
    end
    #  Change the ownership on the file represented by <code>path</code> to <code>user</code> and {code group}, asynchronously.
    # 
    # @param [String] path
    # @param [String] user
    # @param [String] group
    # @param [Proc] handler
    # return [self]
    def chown(path,user,group,&handler)
      if path.class == String
        if user.class == String
          if group.class == String
            if handler.class == Proc
              @j_del.chown(path,user,group,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
              return self
            end
            raise ArgumentError, "Invalid argument handler=#{handler} when calling chown(path,user,group,handler)"
          end
          raise ArgumentError, "Invalid argument group=#{group} when calling chown(path,user,group,handler)"
        end
        raise ArgumentError, "Invalid argument user=#{user} when calling chown(path,user,group,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chown(path,user,group,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#chown}
    # 
    # @param [String] path
    # @param [String] user
    # @param [String] group
    # return [self]
    def chown_blocking(path,user,group)
      if path.class == String
        if user.class == String
          if group.class == String
            @j_del.chownBlocking(path,user,group)
            return self
          end
          raise ArgumentError, "Invalid argument group=#{group} when calling chown_blocking(path,user,group)"
        end
        raise ArgumentError, "Invalid argument user=#{user} when calling chown_blocking(path,user,group)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling chown_blocking(path,user,group)"
    end
    #  Obtain properties for the file represented by <code>path</code>, asynchronously.
    #  If the file is a link, the link will be followed.
    # @param [String] path
    # @param [Proc] handler
    # return [self]
    def props(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.props(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::FileProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling props(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling props(path,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#props}
    # @param [String] path
    # @return [::Vertx::FileProps]
    def props_blocking(path)
      if path.class == String
        return ::Vertx::FileProps.new(@j_del.propsBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling props_blocking(path)"
    end
    #  Obtain properties for the link represented by <code>path</code>, asynchronously.
    #  The link will not be followed.
    # @param [String] path
    # @param [Proc] handler
    # return [self]
    def lprops(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.lprops(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::FileProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lprops(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling lprops(path,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#lprops}
    # @param [String] path
    # @return [::Vertx::FileProps]
    def lprops_blocking(path)
      if path.class == String
        return ::Vertx::FileProps.new(@j_del.lpropsBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling lprops_blocking(path)"
    end
    #  Create a hard link on the file system from <code>link</code> to <code>existing</code>, asynchronously.
    # @param [String] link
    # @param [String] existing
    # @param [Proc] handler
    # return [self]
    def link(link,existing,&handler)
      if link.class == String
        if existing.class == String
          if handler.class == Proc
            @j_del.link(link,existing,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling link(link,existing,handler)"
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling link(link,existing,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling link(link,existing,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#link}
    # @param [String] link
    # @param [String] existing
    # return [self]
    def link_blocking(link,existing)
      if link.class == String
        if existing.class == String
          @j_del.linkBlocking(link,existing)
          return self
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling link_blocking(link,existing)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling link_blocking(link,existing)"
    end
    #  Create a symbolic link on the file system from <code>link</code> to <code>existing</code>, asynchronously.
    # @param [String] link
    # @param [String] existing
    # @param [Proc] handler
    # return [self]
    def symlink(link,existing,&handler)
      if link.class == String
        if existing.class == String
          if handler.class == Proc
            @j_del.symlink(link,existing,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling symlink(link,existing,handler)"
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling symlink(link,existing,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling symlink(link,existing,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#link}
    # @param [String] link
    # @param [String] existing
    # return [self]
    def symlink_blocking(link,existing)
      if link.class == String
        if existing.class == String
          @j_del.symlinkBlocking(link,existing)
          return self
        end
        raise ArgumentError, "Invalid argument existing=#{existing} when calling symlink_blocking(link,existing)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling symlink_blocking(link,existing)"
    end
    #  Unlinks the link on the file system represented by the path <code>link</code>, asynchronously.
    # @param [String] link
    # @param [Proc] handler
    # return [self]
    def unlink(link,&handler)
      if link.class == String
        if handler.class == Proc
          @j_del.unlink(link,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling unlink(link,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling unlink(link,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#unlink}
    # @param [String] link
    # return [self]
    def unlink_blocking(link)
      if link.class == String
        @j_del.unlinkBlocking(link)
        return self
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling unlink_blocking(link)"
    end
    #  Returns the path representing the file that the symbolic link specified by <code>link</code> points to, asynchronously.
    # @param [String] link
    # @param [Proc] handler
    # return [self]
    def read_symlink(link,&handler)
      if link.class == String
        if handler.class == Proc
          @j_del.readSymlink(link,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling read_symlink(link,handler)"
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling read_symlink(link,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#read_symlink}
    # @param [String] link
    # @return [String]
    def read_symlink_blocking(link)
      if link.class == String
        return @j_del.readSymlinkBlocking(link)
      end
      raise ArgumentError, "Invalid argument link=#{link} when calling read_symlink_blocking(link)"
    end
    #  Deletes the file represented by the specified <code>path</code>, asynchronously.
    # @param [String] path
    # @param [Proc] handler
    # return [self]
    def delete(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.delete(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling delete(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete(path,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#delete}
    # @param [String] path
    # return [self]
    def delete_blocking(path)
      if path.class == String
        @j_del.deleteBlocking(path)
        return self
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete_blocking(path)"
    end
    #  Deletes the file represented by the specified <code>path</code>, asynchronously.<p>
    #  If the path represents a directory and <code>recursive = true</code> then the directory and its contents will be
    #  deleted recursively.
    # @param [String] path
    # @param [true,false] recursive
    # @param [Proc] handler
    # return [self]
    def delete_recursive(path,recursive,&handler)
      if path.class == String
        if recursive.class == TrueClass || recursive.class == FalseClass
          if handler.class == Proc
            @j_del.deleteRecursive(path,recursive,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling delete_recursive(path,recursive,handler)"
        end
        raise ArgumentError, "Invalid argument recursive=#{recursive} when calling delete_recursive(path,recursive,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete_recursive(path,recursive,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#delete_recursive}
    # @param [String] path
    # @param [true,false] recursive
    # return [self]
    def delete_recursive_blocking(path,recursive)
      if path.class == String
        if recursive.class == TrueClass || recursive.class == FalseClass
          @j_del.deleteRecursiveBlocking(path,recursive)
          return self
        end
        raise ArgumentError, "Invalid argument recursive=#{recursive} when calling delete_recursive_blocking(path,recursive)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling delete_recursive_blocking(path,recursive)"
    end
    #  Create the directory represented by <code>path</code>, asynchronously.<p>
    #  The new directory will be created with permissions as specified by <code>perms</code>.
    #  The permission String takes the form rwxr-x--- as specified
    #  in <a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>.<p>
    #  The operation will fail if the directory already exists.
    # @overload mkdir(path,handler)
    #   @param [String] path
    #   @param [Proc] handler
    # @overload mkdir(path,perms,handler)
    #   @param [String] path
    #   @param [String] perms
    #   @param [Proc] handler
    # return [self]
    def mkdir(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.mkdir(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.mkdir(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling mkdir(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling mkdir(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling mkdir(param_1,param_2,param_3)"
    end
    #  Blocking version of {::Vertx::FileSystem#mkdir}
    # @param [String] path
    # @param [String] perms
    # return [self]
    def mkdir_blocking(path,perms=nil)
      if path.class == String
        if perms.class == String
          @j_del.mkdirBlocking(path,perms)
          return self
        end
        @j_del.mkdirBlocking(path)
        return self
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling mkdir_blocking(path,perms)"
    end
    #  Create the directory represented by <code>path</code>, asynchronously.<p>
    #  The new directory will be created with permissions as specified by <code>perms</code>.
    #  The permission String takes the form rwxr-x--- as specified
    #  in <a href="http://download.oracle.com/javase/7/docs/api/java/nio/file/attribute/PosixFilePermissions.html">here</a>.<p>
    #  If <code>createParents</code> is set to <code>true</code> then any non-existent parent directories of the directory
    #  will also be created.<p>
    #  The operation will fail if the directory already exists.<p>
    # @overload mkdirs(path,handler)
    #   @param [String] path
    #   @param [Proc] handler
    # @overload mkdirs(path,perms,handler)
    #   @param [String] path
    #   @param [String] perms
    #   @param [Proc] handler
    # return [self]
    def mkdirs(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.mkdirs(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.mkdirs(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling mkdirs(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling mkdirs(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling mkdirs(param_1,param_2,param_3)"
    end
    #  Blocking version of {::Vertx::FileSystem#mkdirs}
    # @param [String] path
    # @param [String] perms
    # return [self]
    def mkdirs_blocking(path,perms=nil)
      if path.class == String
        if perms.class == String
          @j_del.mkdirsBlocking(path,perms)
          return self
        end
        @j_del.mkdirsBlocking(path)
        return self
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling mkdirs_blocking(path,perms)"
    end
    #  Read the contents of the directory specified by <code>path</code>, asynchronously.<p>
    #  The parameter <code>filter</code> is a regular expression. If <code>filter</code> is specified then only the paths that
    #  match  @{filter}will be returned.<p>
    #  The result is an array of String representing the paths of the files inside the directory.
    # @overload readDir(path,handler)
    #   @param [String] path
    #   @param [Proc] handler
    # @overload readDir(path,filter,handler)
    #   @param [String] path
    #   @param [String] filter
    #   @param [Proc] handler
    # return [self]
    def read_dir(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.readDir(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.readDir(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling read_dir(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling read_dir(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling read_dir(param_1,param_2,param_3)"
    end
    #  Blocking version of {::Vertx::FileSystem#read_dir}
    # @param [String] path
    # @param [String] filter
    # @return [Array<String>]
    def read_dir_blocking(path,filter=nil)
      if path.class == String
        if filter.class == String
          return @j_del.readDirBlocking(path,filter).to_a.map { |elt| elt }
        end
        return @j_del.readDirBlocking(path).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling read_dir_blocking(path,filter)"
    end
    #  Reads the entire file as represented by the path <code>path</code> as a , asynchronously.<p>
    #  Do not user this method to read very large files or you risk running out of available RAM.
    # @param [String] path
    # @param [Proc] handler
    # return [self]
    def read_file(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.readFile(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Buffer.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling read_file(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling read_file(path,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#read_file}
    # @param [String] path
    # @return [::Vertx::Buffer]
    def read_file_blocking(path)
      if path.class == String
        return ::Vertx::Buffer.new(@j_del.readFileBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling read_file_blocking(path)"
    end
    #  Creates the file, and writes the specified <code>Buffer data</code> to the file represented by the path <code>path</code>,
    #  asynchronously.
    # @param [String] path
    # @param [::Vertx::Buffer] data
    # @param [Proc] handler
    # return [self]
    def write_file(path,data,&handler)
      if path.class == String
        if data.class.method_defined?(:j_del)
          if handler.class == Proc
            @j_del.writeFile(path,data.j_del,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling write_file(path,data,handler)"
        end
        raise ArgumentError, "Invalid argument data=#{data} when calling write_file(path,data,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling write_file(path,data,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#write_file}
    # @param [String] path
    # @param [::Vertx::Buffer] data
    # return [self]
    def write_file_blocking(path,data)
      if path.class == String
        if data.class.method_defined?(:j_del)
          @j_del.writeFileBlocking(path,data.j_del)
          return self
        end
        raise ArgumentError, "Invalid argument data=#{data} when calling write_file_blocking(path,data)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling write_file_blocking(path,data)"
    end
    #  Open the file represented by <code>path</code>, asynchronously.<p>
    #  The file is opened for both reading and writing. If the file does not already exist it will be created.
    #  Write operations will not automatically flush to storage.
    # @param [String] path
    # @param [Hash] options
    # @param [Proc] handler
    # return [self]
    def open(path,options,&handler)
      if path.class == String
        if options.class == Hash
          if handler.class == Proc
            @j_del.open(path,Java::IoVertxCoreFile::OpenOptions.new(::Vertx::Util::Utils.to_json_object(options)),(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::AsyncFile.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument handler=#{handler} when calling open(path,options,handler)"
        end
        raise ArgumentError, "Invalid argument options=#{options} when calling open(path,options,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling open(path,options,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#open}
    # @param [String] path
    # @param [Hash] options
    # @return [::Vertx::AsyncFile]
    def open_blocking(path,options)
      if path.class == String
        if options.class == Hash
          return ::Vertx::AsyncFile.new(@j_del.openBlocking(path,Java::IoVertxCoreFile::OpenOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        raise ArgumentError, "Invalid argument options=#{options} when calling open_blocking(path,options)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling open_blocking(path,options)"
    end
    #  Creates an empty file with the specified <code>path</code> and permissions <code>perms</code>, asynchronously.
    # @overload createFile(path,handler)
    #   @param [String] path
    #   @param [Proc] handler
    # @overload createFile(path,perms,handler)
    #   @param [String] path
    #   @param [String] perms
    #   @param [Proc] handler
    # return [self]
    def create_file(param_1,param_2,&param_3)
      if param_1.class == String
        if param_2.class == Proc
          @j_del.createFile(param_1,(Proc.new { |ar| param_2.call(ar.failed ? ar.cause : nil) }))
          return self
        end
        if param_2.class == String
          if param_3.class == Proc
            @j_del.createFile(param_1,param_2,(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling create_file(param_1,param_2,param_3)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling create_file(param_1,param_2,param_3)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling create_file(param_1,param_2,param_3)"
    end
    #  Blocking version of {::Vertx::FileSystem#create_file}
    # @param [String] path
    # @param [String] perms
    # return [self]
    def create_file_blocking(path,perms=nil)
      if path.class == String
        if perms.class == String
          @j_del.createFileBlocking(path,perms)
          return self
        end
        @j_del.createFileBlocking(path)
        return self
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling create_file_blocking(path,perms)"
    end
    #  Determines whether the file as specified by the path <code>path</code> exists, asynchronously.
    # @param [String] path
    # @param [Proc] handler
    # return [self]
    def exists(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.exists(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling exists(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling exists(path,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#exists}
    # @param [String] path
    # @return [true,false]
    def exists_blocking(path)
      if path.class == String
        return @j_del.existsBlocking(path)
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling exists_blocking(path)"
    end
    #  Returns properties of the file-system being used by the specified <code>path</code>, asynchronously.
    # @param [String] path
    # @param [Proc] handler
    # return [self]
    def fs_props(path,&handler)
      if path.class == String
        if handler.class == Proc
          @j_del.fsProps(path,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::FileSystemProps.new(ar.result) : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling fs_props(path,handler)"
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling fs_props(path,handler)"
    end
    #  Blocking version of {::Vertx::FileSystem#fs_props}
    # @param [String] path
    # @return [::Vertx::FileSystemProps]
    def fs_props_blocking(path)
      if path.class == String
        return ::Vertx::FileSystemProps.new(@j_del.fsPropsBlocking(path))
      end
      raise ArgumentError, "Invalid argument path=#{path} when calling fs_props_blocking(path)"
    end
  end
end
