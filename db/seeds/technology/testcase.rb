# frozen_string_literal: true

# TestCase
technology_testcase = Technology.where(slug: 'testcase').first_or_initialize
technology_testcase.assign_attributes(
  name: 'testcase',
  title: 'TestCase'
)
technology_testcase.save
technology_testcase.testing!
