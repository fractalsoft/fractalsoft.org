# Modernizing a Legacy Rails Project

## Introduction: The Struggles of Legacy Code

![Developer](/domains/modernizing_rails/developer_400x400.webp)
Imagine this: You’re a developer tasked with maintaining a business-critical
Rails application that’s been running for years. While it still functions, the
codebase tells a different story. It’s built on outdated versions of Rails and
Ruby, weighed down by precompilers and front-end frameworks that were
revolutionary a decade ago. Every feature request or bug fix turns into an
uphill battle, forcing you to wade through layers of clunky, convoluted code.
On top of that, the aging tech stack brings security vulnerabilities and
performance issues, making you and your team feel like you're constantly
playing catch-up.

Sound familiar? If you’re maintaining legacy Rails applications, you’ve likely
faced similar struggles.  Over time, technical debt accumulates, and the longer
the codebase remains stagnant, the harder it becomes to evolve. This was
exactly the scenario we faced with our clients Rails application, a cornerstone
of their business operations. The project, still running on Rails 4.2.11.3 and
Ruby 2.7.8, was quickly becoming a liability. It was time to act.

But where do you begin when the mountain of issues feels insurmountable? For
us, it started with a clear objective: modernize the project, streamline the
development process, and position it for future growth. In this case study,
we’ll share our story of transforming a legacy Rails application into a
modernized Rails application running Rails 7.1 on Ruby 3.2.3, delivering a
secure, efficient, and future-proof system.

If you’re facing similar struggles with an outdated stack, this story will
offer practical insights into untangling the complexities of legacy systems and
setting them up for success.

---

## Background: A Legacy on Borrowed Time

![Cogs](/domains/modernizing_rails/cogs_400x400.webp)
The Rails project we inherited was a tale of technical debt slowly catching up.
Originally built years ago, it relied heavily on tools and frameworks that were
now considered obsolete. Ember 1.4 was powering part of the frontend, while
CoffeeScript and Hamlbars precompilers added further complexity to the asset
pipeline. These tools were revolutionary when they were adopted but had since
become barriers to progress.

Security vulnerabilities loomed large. Running on Rails 4.2.11.3 and Ruby 2.7.8
meant the system missed out on critical patches and improvements that modern
versions provided. Performance bottlenecks also plagued the application, with
long boot times and sluggish file reloads during development. For new
developers joining the team, onboarding felt like decoding ancient
hieroglyphics.

The situation was clear: if we wanted to scale, maintain, and innovate, we
needed to bring the project into the modern Rails ecosystem. This wouldn’t be
a quick fix—it would be a journey.

---

## The Journey Begins: A Step-by-Step Rails Upgrade Process

### Untangling the Frontend

![Cogs](/domains/modernizing_rails/journey_400x400.webp)
Our first step was to address the most pressing issue: the frontend
precompilers. The asset pipeline had become a tangled mess of Hamlbars,
CoffeeScript, and EmberScript. Modernizing this would pave the way for cleaner
code and faster builds.

We started with **Hamlbars**, a precompiler that turned Haml templates into
Handlebars-compatible code. While it served its purpose in the past, it now
added unnecessary complexity. We decided to migrate all Hamlbars templates to
plain **Handlebars.js**. This not only simplified the asset pipeline but also
ensured we were aligned with modern templating standards.

**Next came CoffeeScript.** It had been a popular choice when the project
began, but with modern JavaScript (ES6+) offering cleaner syntax and more
features, CoffeeScript had outlived its usefulness. We turned to
**Decaffeinate**, an automation tool that converts CoffeeScript into modern
JavaScript. It handled most of the heavy lifting, turning this:

```coffeescript
class Draggable
  constructor: (@el) ->
    @url = @el.data('draggable-url')
    @init()

  init: ->
    console.log 'Initialized!'
```

Into this:

```javascript
class Draggable {
  constructor(el) {
    this.init = this.init.bind(this);
    this.$el = $(el);
    this.url = this.$el.data('draggable-url');
    this.init();
  }

  init() {
    console.log('Initialized!');
  }
}
```

This process reduced manual effort and allowed us to focus on edge cases like
method bindings and implicit returns.

Finally, **EmberScript**, another relic of the past, was replaced with modern
JavaScript. We removed the `ember-rails` dependency, giving us a cleaner and
more maintainable frontend stack.

### Clearing Out the Backlog of Dependencies

With the frontend untangled, it was time to address backend dependencies. Our
`Gemfile` was littered with outdated gems, many of which no longer worked with
newer Rails versions. We carefully updated each dependency, starting with
small, incremental upgrades:

1. Upgraded Rails to **5.2**, then **6.0**, and finally **6.1**.
2. Replaced deprecated methods like `update_attributes` with `update`.
3. Added support for **optional belongs\_to associations** to align with Rails
6 standards.

We also introduced the `bootsnap` gem to speed up boot times. **Why Bootsnap?**
It intercepts Ruby's require calls and caches them, significantly reducing file
system overhead. This alone cut our average boot time from \~10 seconds to \~3
seconds in development mode.

For real-time file watching, we added the `listen` gem, which improved file
reload performance—a welcome quality-of-life enhancement for developers.

---

## Reaching Rails 6.1: Storage and Security Improvements

With Rails 6.1, we gained access to new features like Active Storage
improvements and better schema management. We set up `config/storage.yml` to
enable seamless file uploads and support for cloud storage providers. For
enhanced security, we implemented a **Content Security Policy (CSP)**
initializer, which mitigates XSS attacks by enforcing stricter resource loading
policies:

```ruby
Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https
    policy.script_src  :self, :https
    policy.style_src   :self, :https
  end
end
```

These changes ensured our application was both secure and scalable.

---

## The Final Stretch: Rails 7.1 and Ruby 3.2.3

The last leg of our journey took us to Rails 7.1 and Ruby 3.2.3. Upgrading to
Ruby 3 required adjustments to certain gems that weren’t fully compatible. One
such challenge was with **CarrierWave**, an older gem we still used for file
uploads. To bridge the gap, we applied a custom monkey patch to maintain
compatibility with Ruby 3’s stricter syntax:

```ruby
module CarrierWave
  class SanitizedFile
    def exists?
      File.exist?(self.path.to_s)
    end
  end
end
```

Additionally, we updated critical gems like `bigdecimal` and `humanizer` to
their latest versions, ensuring everything worked seamlessly on Ruby 3.2.3.

---

## The Results: A Modern, Maintainable Codebase

The journey was long, but the results were worth it. By upgrading to Rails 7.1
and Ruby 3.2.3, we unlocked significant improvements, including:

- **Optimized Rails Performance**: Faster boot times and improved file reload
speeds in development mode.

- **Enhanced Security with Rails 7.1**: Implementation of features like Content
Security Policy (CSP) to mitigate vulnerabilities.

- **Streamlined Asset Pipeline**: Removal of outdated precompilers like
CoffeeScript and Hamlbars simplified builds.

- **Improved Developer Experience**: Modern tools like ES6 and Handlebars
foster a smoother workflow and onboarding for new developers.

---

## Lessons Learned

Reflecting on this journey, a few key lessons stood out:

1. **Incremental Upgrades Mitigate Risk**: Breaking the upgrade into stages
allowed us to identify and resolve issues step-by-step without overwhelming the
team.
2. **Modern Standards Drive Efficiency**: Aligning with modern conventions
improved collaboration and reduced onboarding time for new developers.
3. **Technical Debt Adds Long-Term Costs**: Tools like Hamlbars and
CoffeeScript seemed like small wins at the time but added significant overhead
in the long run. Simplifying the stack paid off.

---

## Conclusion

Modernizing a legacy Rails application isn’t just about upgrading versions—it’s
about transforming challenges into opportunities for growth. By removing
outdated tools, enhancing security with Rails 7.1, and embracing modern
development standards, we revitalized an aging system. The result? A
streamlined, efficient, and future-proof Rails application ready to support our
business for years to come. If you’re still maintaining a legacy system, now is
the time to modernize and unlock your application’s full potential.

For teams considering a similar upgrade, our story proves that with patience,
planning, and the right tools (like Decaffeinate and Bootsnap), even the most
daunting legacy systems can be brought back to life. The rewards—from improved
performance to happier developers—are well worth the effort.

---

### Acknowledgments

A special thanks to the creators of open-source tools like **Decaffeinate**,
**Bootsnap**, and **Handlebars**, which were instrumental in our success.
