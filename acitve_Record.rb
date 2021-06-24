# Overiding generated methods 

class Car < ActiveRecord::Base 
  belongs_to :owner 
  belongs_to :old_owner 
  
  def owner=(new_owner)
    self.old_owner = self.owner 
    super 
  end 
end 

# One-to-one:
# base 
class Employee < ActiveRecord::Base 
  has_one :office 
end 
# associated model 
class Office < ActiveRecord::Base 
  belongs_to :employee # foreign key - employee_id 
end 

# One-to-many:

class Manager < ActiveRecord::Base 
  has_many :employees 
end 

class Employee < ActiveRecord::Base 
  belongs_to :manager  # foreign key - manager_id
end 

# Many-to-many:

class Assignment < ActiveRecord::Base 
  belongs_to :programmer # foreign key - programmer_id
  belongs_to :project   # foreign key - project_id
end 

class Programmer < ActiveRecord::Base 
  has_many :assignments 
  has_many :projects, through: :assignments 
end 

class Project < ActiveRecord::Base
  has_many :assignments 
  has_many :programmers, through: :assignments
end 


# 2nd way: 
class Programmer < ActiveRecord::Base
  has_and_belongs_to_many :projects # foreign keys in the join table
end

class Project < ActiveRecord::Base
  has_and_belongs_to_many :programmers # foreign keys in the join table
end


# Is it a #belongs_to or #has_one association? 
class User < ActiveRecord::Base 
  # I reference an account.
  belongs_to :account
end

class Acount < ActiveRecord::Base 
   # One user references me.
  has_one :user
end 

# Customizing the query:

class Blog < ActiveRecord::Base 
  has_many :published_posts, -> { where(published: true) }, class_name: 'Post'
end 


# Accessing the owner object: 

class User < ActiveRecord::Base
  has_many :birthday_events, ->(user) { where(starts_on: user.birthday) }, class_name: 'Event'
end

# Association callbacks: 

class Project
  has_and_belongs_to_many :developers, after_add: :evaluate_velocity

  def evaluate_velocity(developer)
    ...
  end
end


class Project
  has_and_belongs_to_many :developers,
                          after_add: [:evaluate_velocity, Proc.new { |p, d| p.shipping_date = Time.now}]
end

# Association extensions: 

class Account < ActiveRecord::Base
  has_many :people do
    def find_or_create_by_name(name)
      first_name, last_name = name.split(" ", 2)
      find_or_create_by(first_name: first_name, last_name: last_name)
    end
  end
end

person = Account.first.people.find_or_create_by_name("David Heinemeier Hansson")
person.first_name # => "David"
person.last_name  # => "Heinemeier Hansson"


# moduleActiveRecord::Associations::ClassMethodsImportance_5
Ruby on Rails latest stable (v5.2.3) - 4 notes
1.0.0
1.1.6
(34)
1.2.6
(14)
2.0.3
(38)
2.1.0
(5)
2.2.1
(3)
2.3.2
(1)
2.3.8
(7)
3.0.0
(15)
3.0.9
(-8)
3.1.0
(38)
3.2.1
(3)
3.2.8
3.2.13
4.0.2
(4)
4.1.8
(8)
4.2.1
(2)
4.2.7
4.2.9
5.0.0.1
(-3)
5.1.7
(2)
5.2.3
(-2)
6.0.0
(1)
What's this?
Related
Instance methods (61)
Importance_0_sm add_association_callbacks Icon_private_sm (<= v3.0.9)
Importance_0_sm add_counter_cache_callbacks Icon_private_sm (<= v3.0.9)
Importance_0_sm add_deprecated_api_for_has_... Icon_private_sm (<= v1.2.6)
Importance_0_sm add_limited_ids_condition! Icon_private_sm (<= v2.3.8)
Importance_0_sm add_multiple_associated_sav... Icon_private_sm (<= v2.2.1)
Importance_0_sm add_multiple_associated_val... Icon_private_sm (<= v2.2.1)
Importance_0_sm add_single_associated_save_... Icon_private_sm (<= v2.1.0)
Importance_0_sm add_single_associated_valid... Icon_private_sm (<= v2.2.1)
Importance_0_sm add_sti_conditions! Icon_private_sm (<= v1.0.0)
Importance_0_sm add_touch_callbacks Icon_private_sm (<= v3.0.9)
Importance_0_sm associate_identification Icon_private_sm (<= v1.0.0)
Importance_0_sm association_accessor_methods Icon_private_sm (<= v3.0.9)
Importance_0_sm association_constructor_method Icon_private_sm (<= v3.0.9)
Importance_0_sm association_join Icon_private_sm (<= v1.0.0)
Importance_5_sm belongs_to
Importance_0_sm collection_accessor_methods Icon_private_sm (<= v3.0.9)
Importance_0_sm collection_reader_method Icon_private_sm (<= v3.0.9)
Importance_0_sm column_aliases Icon_private_sm (<= v2.3.8)
Importance_0_sm conditions_tables Icon_private_sm (<= v2.3.8)
Importance_0_sm condition_word Icon_private_sm (<= v2.3.8)
Importance_0_sm configure_after_destroy_met... Icon_private_sm (<= v3.0.9)
Importance_0_sm configure_dependency_for_be... Icon_private_sm (<= v3.0.9)
Importance_2_sm configure_dependency_for_ha... Icon_private_sm (<= v3.0.9)
Importance_1_sm configure_dependency_for_ha... Icon_private_sm (<= v3.0.9)
Importance_0_sm construct_counter_sql_with_... Icon_private_sm (<= v1.1.6)
Importance_0_sm construct_finder_sql_for_as... Icon_private_sm (<= v2.3.8)
Importance_0_sm construct_finder_sql_with_i... Icon_private_sm (<= v2.3.8)
Importance_0_sm count_with_associations Icon_private_sm (<= v1.1.6)
Importance_0_sm create_belongs_to_reflection Icon_private_sm (<= v3.0.9)
Importance_0_sm create_extension_module Icon_private_sm (<= v1.2.6)
Importance_0_sm create_extension_modules Icon_private_sm (<= v3.0.9)
Importance_0_sm create_has_and_belongs_to_m... Icon_private_sm (<= v3.0.9)
Importance_0_sm create_has_many_reflection Icon_private_sm (<= v3.0.9)
Importance_0_sm create_has_one_reflection Icon_private_sm (<= v3.0.9)
Importance_0_sm create_has_one_through_refl... Icon_private_sm (<= v3.0.9)
Importance_0_sm delete_all_has_many_depende... Icon_private_sm (<= v3.0.9)
Importance_0_sm extract_record Icon_private_sm (<= v1.0.0)
Importance_0_sm find_with_associations Icon_private_sm (<= v2.3.8)
Importance_0_sm generate_primary_key_table Icon_private_sm (<= v1.0.0)
Importance_0_sm generate_schema_abbreviations Icon_private_sm (<= v1.0.0)
Importance_0_sm guard_against_missing_refle... Icon_private_sm (<= v1.0.0)
Importance_0_sm guard_against_unlimitable_r... Icon_private_sm (<= v2.3.8)
Importance_5_sm has_and_belongs_to_many
Importance_5_sm has_many
Importance_5_sm has_one
Importance_1_sm include_eager_conditions? Icon_private_sm (<= v2.3.8)
Importance_1_sm include_eager_order? Icon_private_sm (<= v2.3.8)
Importance_0_sm include_eager_select? Icon_private_sm (<= v2.3.8)
Importance_0_sm joined_tables Icon_private_sm (<= v2.3.8)
Importance_1_sm join_table_name Icon_private_sm (<= v3.0.9)
Importance_0_sm nullify_has_many_dependencies Icon_private_sm (<= v3.0.9)
Importance_0_sm order_tables Icon_private_sm (<= v2.3.8)
Importance_0_sm references_eager_loaded_tab... Icon_private_sm (<= v2.3.8)
Importance_0_sm reflect_on_included_associa... Icon_private_sm (<= v2.3.8)
Importance_0_sm require_association_class Icon_private_sm (<= v1.1.6)
Importance_0_sm select_all_rows Icon_private_sm (<= v2.3.8)
Importance_0_sm select_limited_ids_list Icon_private_sm (<= v2.3.8)
Importance_0_sm selects_tables Icon_private_sm (<= v2.3.8)
Importance_0_sm tables_in_hash Icon_private_sm (<= v2.3.8)
Importance_0_sm tables_in_string Icon_private_sm (<= v2.3.8)
Importance_0_sm using_limitable_reflections? Icon_private_sm (<= v2.3.8)
Included modules
Importance_2_sm Module
Namespace children
Importance_0_sm InnerJoinDependency (<= v2.3.8)
Importance_0_sm JoinDependency (<= v3.0.9)
Icon_private_sm = private
Icon_protected_sm = protected

Associations are a set of macro-like class methods for tying objects together through foreign keys. They express relationships like “Project has one Project Manager” or “Project belongs to a Portfolio”. Each macro adds a number of methods to the class which are specialized according to the collection or association symbol and the options hash. It works much the same way as Ruby’s own attr* methods.

class Project < ActiveRecord::Base
  belongs_to              :portfolio
  has_one                 :project_manager
  has_many                :milestones
  has_and_belongs_to_many :categories
end
The project class now has the following methods (and more) to ease the traversal and manipulation of its relationships:

Project#portfolio, Project#portfolio=(portfolio), Project#portfolio.nil?

Project#project_manager, Project#project_manager=(project_manager), Project#project_manager.nil?,

Project#milestones.empty?, Project#milestones.size, Project#milestones, Project#milestones<<(milestone), Project#milestones.delete(milestone), Project#milestones.destroy(milestone), Project#milestones.find(milestone_id), Project#milestones.build, Project#milestones.create

Project#categories.empty?, Project#categories.size, Project#categories, Project#categories<<(category1), Project#categories.delete(category1), Project#categories.destroy(category1)

A word of warning
Don’t create associations that have the same name as {instance methods}[rdoc-ref:ActiveRecord::Core] of ActiveRecord::Base. Since the association adds a method with that name to its model, using an association with the same name as one provided by ActiveRecord::Base will override the method inherited through ActiveRecord::Base and will break things. For instance, attributes and connection would be bad choices for association names, because those names already exist in the list of ActiveRecord::Base instance methods.

Auto-generated methods
See also Instance Public methods below for more details.

Singular associations (one-to-one)
                                  |            |  belongs_to  |
generated methods                 | belongs_to | :polymorphic | has_one
----------------------------------+------------+--------------+---------
other                             |     X      |      X       |    X
other=(other)                     |     X      |      X       |    X
build_other(attributes={})        |     X      |              |    X
create_other(attributes={})       |     X      |              |    X
create_other!(attributes={})      |     X      |              |    X
reload_other                      |     X      |      X       |    X
Collection associations (one-to-many / many-to-many)
                                  |       |          | has_many
generated methods                 | habtm | has_many | :through
----------------------------------+-------+----------+----------
others                            |   X   |    X     |    X
others=(other,other,...)          |   X   |    X     |    X
other_ids                         |   X   |    X     |    X
other_ids=(id,id,...)             |   X   |    X     |    X
others<<                          |   X   |    X     |    X
others.push                       |   X   |    X     |    X
others.concat                     |   X   |    X     |    X
others.build(attributes={})       |   X   |    X     |    X
others.create(attributes={})      |   X   |    X     |    X
others.create!(attributes={})     |   X   |    X     |    X
others.size                       |   X   |    X     |    X
others.length                     |   X   |    X     |    X
others.count                      |   X   |    X     |    X
others.sum(*args)                 |   X   |    X     |    X
others.empty?                     |   X   |    X     |    X
others.clear                      |   X   |    X     |    X
others.delete(other,other,...)    |   X   |    X     |    X
others.delete_all                 |   X   |    X     |    X
others.destroy(other,other,...)   |   X   |    X     |    X
others.destroy_all                |   X   |    X     |    X
others.find(*args)                |   X   |    X     |    X
others.exists?                    |   X   |    X     |    X
others.distinct                   |   X   |    X     |    X
others.reset                      |   X   |    X     |    X
others.reload                     |   X   |    X     |    X
Overriding generated methods
Association methods are generated in a module included into the model class, making overrides easy. The original generated method can thus be called with super:

class Car < ActiveRecord::Base
  belongs_to :owner
  belongs_to :old_owner

  def owner=(new_owner)
    self.old_owner = self.owner
    super
  end
end
The association methods module is included immediately after the generated attributes methods module, meaning an association will override the methods for an attribute with the same name.

Cardinality and associations
Active Record associations can be used to describe one-to-one, one-to-many and many-to-many relationships between models. Each model uses an association to describe its role in the relation. The #belongs_to association is always used in the model that has the foreign key.

One-to-one
Use #has_one in the base, and #belongs_to in the associated model.

class Employee < ActiveRecord::Base
  has_one :office
end
class Office < ActiveRecord::Base
  belongs_to :employee    # foreign key - employee_id
end
One-to-many
Use #has_many in the base, and #belongs_to in the associated model.

class Manager < ActiveRecord::Base
  has_many :employees
end
class Employee < ActiveRecord::Base
  belongs_to :manager     # foreign key - manager_id
end
Many-to-many
There are two ways to build a many-to-many relationship.

The first way uses a #has_many association with the :through option and a join model, so there are two stages of associations.

class Assignment < ActiveRecord::Base
  belongs_to :programmer  # foreign key - programmer_id
  belongs_to :project     # foreign key - project_id
end
class Programmer < ActiveRecord::Base
  has_many :assignments
  has_many :projects, through: :assignments
end
class Project < ActiveRecord::Base
  has_many :assignments
  has_many :programmers, through: :assignments
end
For the second way, use #has_and_belongs_to_many in both models. This requires a join table that has no corresponding model or primary key.

class Programmer < ActiveRecord::Base
  has_and_belongs_to_many :projects       # foreign keys in the join table
end
class Project < ActiveRecord::Base
  has_and_belongs_to_many :programmers    # foreign keys in the join table
end
Choosing which way to build a many-to-many relationship is not always simple. If you need to work with the relationship model as its own entity, use #has_many :through. Use #has_and_belongs_to_many when working with legacy schemas or when you never work directly with the relationship itself.

Is it a #belongs_to or #has_one association?
Both express a 1-1 relationship. The difference is mostly where to place the foreign key, which goes on the table for the class declaring the #belongs_to relationship.

class User < ActiveRecord::Base
  # I reference an account.
  belongs_to :account
end

class Account < ActiveRecord::Base
  # One user references me.
  has_one :user
end
The tables for these classes could look something like:

CREATE TABLE users (
  id bigint NOT NULL auto_increment,
  account_id bigint default NULL,
  name varchar default NULL,
  PRIMARY KEY  (id)
)

CREATE TABLE accounts (
  id bigint NOT NULL auto_increment,
  name varchar default NULL,
  PRIMARY KEY  (id)
)
Unsaved objects and associations
You can manipulate objects and associations before they are saved to the database, but there is some special behavior you should be aware of, mostly involving the saving of associated objects.

You can set the :autosave option on a #has_one, #belongs_to, #has_many, or #has_and_belongs_to_many association. Setting it to true will always save the members, whereas setting it to false will never save the members. More details about :autosave option is available at AutosaveAssociation.

One-to-one associations
Assigning an object to a #has_one association automatically saves that object and the object being replaced (if there is one), in order to update their foreign keys - except if the parent object is unsaved (new_record? == true).

If either of these saves fail (due to one of the objects being invalid), an ActiveRecord::RecordNotSaved exception is raised and the assignment is cancelled.

If you wish to assign an object to a #has_one association without saving it, use the #build_association method (documented below). The object being replaced will still be saved to update its foreign key.

Assigning an object to a #belongs_to association does not save the object, since the foreign key field belongs on the parent. It does not save the parent either.

Collections
Adding an object to a collection (#has_many or #has_and_belongs_to_many) automatically saves that object, except if the parent object (the owner of the collection) is not yet stored in the database.

If saving any of the objects being added to a collection (via push or similar) fails, then push returns false.

If saving fails while replacing the collection (via association=), an ActiveRecord::RecordNotSaved exception is raised and the assignment is cancelled.

You can add an object to a collection without automatically saving it by using the collection.build method (documented below).

All unsaved (new_record? == true) members of the collection are automatically saved when the parent is saved.

Customizing the query
Associations are built from Relation objects, and you can use the Relation syntax to customize them. For example, to add a condition:

class Blog < ActiveRecord::Base
  has_many :published_posts, -> { where(published: true) }, class_name: 'Post'
end
Inside the -> { ... } block you can use all of the usual Relation methods.

Accessing the owner object
Sometimes it is useful to have access to the owner object when building the query. The owner is passed as a parameter to the block. For example, the following association would find all events that occur on the user’s birthday:

class User < ActiveRecord::Base
  has_many :birthday_events, ->(user) { where(starts_on: user.birthday) }, class_name: 'Event'
end
Note: Joining, eager loading and preloading of these associations is not possible. These operations happen before instance creation and the scope will be called with a nil argument.

Association callbacks
Similar to the normal callbacks that hook into the life cycle of an Active Record object, you can also define callbacks that get triggered when you add an object to or remove an object from an association collection.

class Project
  has_and_belongs_to_many :developers, after_add: :evaluate_velocity

  def evaluate_velocity(developer)
    ...
  end
end
It’s possible to stack callbacks by passing them as an array. Example:

class Project
  has_and_belongs_to_many :developers,
                          after_add: [:evaluate_velocity, Proc.new { |p, d| p.shipping_date = Time.now}]
end
Possible callbacks are: before_add, after_add, before_remove and after_remove.

If any of the before_add callbacks throw an exception, the object will not be added to the collection.

Similarly, if any of the before_remove callbacks throw an exception, the object will not be removed from the collection.

Association extensions
The proxy objects that control the access to associations can be extended through anonymous modules. This is especially beneficial for adding new finders, creators, and other factory-type methods that are only used as part of this association.

class Account < ActiveRecord::Base
  has_many :people do
    def find_or_create_by_name(name)
      first_name, last_name = name.split(" ", 2)
      find_or_create_by(first_name: first_name, last_name: last_name)
    end
  end
end

person = Account.first.people.find_or_create_by_name("David Heinemeier Hansson")
person.first_name # => "David"
person.last_name  # => "Heinemeier Hansson"
If you need to share the same extensions between many associations, you can use a named extension module.

module FindOrCreateByNameExtension
  def find_or_create_by_name(name)
    first_name, last_name = name.split(" ", 2)
    find_or_create_by(first_name: first_name, last_name: last_name)
  end
end

class Account < ActiveRecord::Base
  has_many :people, -> { extending FindOrCreateByNameExtension }
end

class Company < ActiveRecord::Base
  has_many :people, -> { extending FindOrCreateByNameExtension }
end




































































































