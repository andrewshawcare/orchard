#!/bin/sh -e
defaults write com.excitedpixel.breaktime displayInDock -boolean false
defaults write com.excitedpixel.breaktime enforceBreak -boolean true
defaults write com.excitedpixel.breaktime length -integer 180
defaults write com.excitedpixel.breaktime magicReschedule -boolean false
defaults write com.excitedpixel.breaktime minutes -integer 1620
defaults write com.excitedpixel.breaktime runOnLogin -boolean true