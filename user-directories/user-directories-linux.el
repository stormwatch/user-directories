;;; user-directories-linux.el --- Linux specification for User Emacs directories   -*- lexical-binding: t -*-

;; Copyright (C)2018 Free Software Foundation

;; Author: Francisco Miguel Colaço <francisco.colaco@gmail.com>
;; Maintainer: Francisco Miguel Colaço <francisco.colaco@gmail.com>
;; Version: 1
;; Created: 2018-05-05
;; Keywords: emacs
;; Homepage: https://github.com/francisco.colaco/emacs-directories
;; Package-Requires: (cl)

;; This file is not yet part of GNU Emacs.

;; This program is free software: you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; The Linux configuration of the user-directories package uses
;; xdg-user-dir, present at all present distributions.
;;
;; There are directories for user :data, :config, :cache and :runtime
;; files.  Aditionally, the following directories are queried from
;; xdg-user-dir:
;;
;;  - :desktop
;;  - :documents
;;  - :download
;;  - :pictures
;;  - :publicshare
;;  - :templates
;;  - :videos
;;

;;; Code:

(require 'xdg-user-dir)


;;;; Linux specific code.

(defun setup-user-directories-linux ()
  "Set up the user directories on Linux based systems."

  (xdg-user-dir-assign-directories))


(provide 'user-directories-linux)
;;; user-directories-linux.el ends here
