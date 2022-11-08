# frozen_string_literal: false

# This class inherits from application_controller
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = reply(@question)
  end

  def reply(question)
    return %(Great!) if question.downcase == %(i am going to work) && !question.nil?

    text1 = %(Silly question, get dressed and go to work!)
    text2 = %(I don't care, get dressed and go to work!)
    question.end_with?('?') ? text1 : text2
  end
end
