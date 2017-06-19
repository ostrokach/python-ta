# 2017 Content Developer for PythonTA

- [Week 3](#week-4-june-12---june-19)
- [Week 3](#week-3-june-5---june-12)
- [Week 2](#week-2-may-28---june-5)
- [Week 1](#week-1-may-22---may-28)

## Week 4 (June 12 - June 19)

### ToDos from previous week

> Change the titles of each entry from "CODE: description" to "Description (CODE)"
- WIP:

> Find a link to a website that talks about default parameters
- WIP:

### Progress

- Update **Code complexity** section of the website:
  - Website PR: pyta-uoft/website#58
  - PyTA PR: pyta-uoft/pyta#258
  - Spreadsheet: https://docs.google.com/spreadsheets/d/1aNX6t_Edwqn9f9Y7gm8qCJeRuWyOPLvxAu9PF7TOOR8/edit?usp=sharing

### Questions

- Maybe have everything in alphabetical order and build the table of contents based on tags?
  - Could have "see also" links below every error.
- Examples should be more standardized?
  - Common theme for all examples, e.g. statistics (`sum`, `mean(lst, skip_none=True)`, `count`, ...)?
  - Examples should have consistent docstrings?
  - Examples should be mostly correct with regard to other pylint errors (e.g. code discouraged by `R0102` in `C0113`, `C0121`, `W0125`).


## Week 3 (June 5 - June 12)

### ToDos from previous week

> Add a test to make sure there are no dead links.
- Opened issue: https://github.com/pyta-uoft/website/issues/55

> List elements are not styled correctly.
- Opened issue: https://github.com/pyta-uoft/website/issues/56

> Address issues with the update to **Improper Python usage** section on the website:
- Added commits to PR: https://github.com/pyta-uoft/website/pull/54

### Progress

- Update **Type errors** section on the website
  - Website PR: https://github.com/pyta-uoft/website/pull/57
  - PyTA PR: https://github.com/pyta-uoft/pyta/pull/243
  - Spreadsheet: https://docs.google.com/spreadsheets/d/1aNX6t_Edwqn9f9Y7gm8qCJeRuWyOPLvxAu9PF7TOOR8/edit?usp=sharing

### Questions

- Is a single commit per error message better?
- How to keep track of concurrent changes in PyTA and website repos?
  - Move PyTA website into a `docs` folder in the PyTA repo?


## Week 2 (May 28 - June 5)

### ToDos from previous week

- > Maybe replace `>>> python_ta.doc('E9999')` with `>>> python_ta.doc('E9998')` in the README...
  - Actually, it's already correct. I got confused because the `E9998` error is displayed last. `E9999` is the error that the example is trying to demonstrate.

- > Problems with PyTA error messages and code highlighting for `E9997 (forbidden-global-variables)`
  - Created an issue on GitHub: https://github.com/pyta-uoft/pyta/issues/223

- > PyCharm plugin with a tooltop for a particular error message
  - Created an issue on GitHub: https://github.com/pyta-uoft/pyta/issues/229

### Progress

- Started going over and improving error descriptions on the website:
  - [Pull request](https://github.com/pyta-uoft/website/pull/54)
  - [Spreadsheet to keep track of progress](https://docs.google.com/spreadsheets/d/1aNX6t_Edwqn9f9Y7gm8qCJeRuWyOPLvxAu9PF7TOOR8/edit?usp=sharing)

### Questions / Issues

- Max line length in [index.md](https://github.com/pyta-uoft/website/blob/master/index.md)?
  - My code editor automatically wraps text at a specified line length, so I would prefer 1 line per paragraph.
  - But I can stick to 80 characters per line if that's better for everyone else.
- Add a test to make sure there are no dead links?
  - May be useful now that we are including links external resources.
  - Can open issue on GitHub?
- Different colours for warnings and errors?
  - Some errors are much worse than others (syntax errors vs. "bad smells"). Maybe this should be indicated somehow? (not sure if this would just lead to more confusion?)
- Make the title for each error "clickable"
  - Could generate a link for a particular section by clicking on a title.
  - Standard practice in e.g. documentation and README.md files displayed on GitHub
  - Turns issue for this already exists: https://github.com/pyta-uoft/website/issues/53
- Bullet lists not being parsed
  - Currently, lists appear as paragraphs in the rendered webpage.
  - i.e `<ul><li>...</li></ul>` look similar to `<o>...</p>`, without bullet points, etc.
  - For example [E0001](http://kimstg:8090/#E0001) is acually a nested list with two sections: *Python error message: "Missing parentheses in call to 'print'"* and *Python error message: "SyntaxError: invalid syntax"*
  - Can open an issue on GitHub, or try to fix this myself?


## Week 1 (May 22 - May 28)

### Install PyTA

- Everything works after cloning the repository and running `pip install -e .`.
- Maybe replace `>>> python_ta.doc('E9999')` with `>>> python_ta.doc('E9998')` in the README, so that it coincides with the error given by `>>> python_ta.check_all('examples.forbidden_import_example')`?

### Configure pylint

- Installed and configured pylint locally to make sure that I can reproduce all the errors.
- [linter-pylint](https://github.com/AtomLinter/linter-pylint) plugin for Atom produces tooltips describing an error and giving a link to more complete documentation. Not sure how much work it would be to adopt this to PyCharm and PyTA, but it could be very useful for students.
  - For example, the `examples/pylint/E0211_no_method_argument.py` file produces the following:
    ![](images/atom-pylint-plugin.png)
  - `E0211` link icon points to: http://pylint-messages.wikidot.com/messages:e0211.

### Website

- Created a list of errors which can be produced by pylint but are not covered in '.pylintrc' or 'index.md': see [missing_error_codes.ipynb](notebooks/missing_error_codes.ipynb).
- Briefly looked over the messages to see how they could be improved.
  - In ~50% cases, they look ok to me? Could add links to external resources, etc.
  - Some have errors and / or can clearly be expanded:
    - Inherit from `Exception`, not `BaseException`, and why `except` is not enough.
- Should I go over all the messages and correct the ones I clearly know how to change first?
- Should the errors be described in any particular order in `index.md`? At the moment, they are not in alphabetical order.

### PyTA

- Created a notebook with output generated by python_ta for all files in the "pyta/examples" directory: see [missing_error_codes.ipynb](http://nbviewer.jupyter.org/github/ostrokach/python-ta/blob/master/notebooks/python_ta_demo.ipynb) (link to nbviewer because github does not render the notebook properly).
- Discovered one problem so far:
  - `E9997 (forbidden-global-variables)`
    - This error is very easy to trigger and calls all sorts of functions and builtins (`range`, `function`, `print`) as variables.
    - Produces duplicate messages, highlighting a variable both when it is declared and used.
- Need to hide output for some errors and look at the output much more in-depth.

### Pull request structure

- I guess it does not make sense to have one pull request for each error?
