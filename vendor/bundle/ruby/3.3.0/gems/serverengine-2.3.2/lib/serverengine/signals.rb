#
# ServerEngine
#
# Copyright (C) 2012-2013 FURUHASHI Sadayuki
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

require 'serverengine/utils'

module ServerEngine
  module Signals
    GRACEFUL_STOP = :TERM
    IMMEDIATE_STOP = ServerEngine::windows? ? :KILL : :QUIT
    GRACEFUL_RESTART = :USR1
    IMMEDIATE_RESTART = :HUP
    RELOAD = :USR2
    DETACH = :INT
    DUMP = ENV.has_key?('SIGDUMP_SIGNAL') ? ENV['SIGDUMP_SIGNAL'].to_sym : :CONT
  end
end
