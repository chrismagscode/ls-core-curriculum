# frozen_string_literal: true

flintstones = %w[Fred Wilma]
flintstones << %w[Barney Betty]
flintstones << %w[BamBam Pebbles]

flintstones.flatten!
p flintstones
