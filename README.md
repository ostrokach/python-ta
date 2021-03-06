# 2017 Content Developer for PythonTA

- [Spreadsheet](https://docs.google.com/spreadsheets/d/1aNX6t_Edwqn9f9Y7gm8qCJeRuWyOPLvxAu9PF7TOOR8/edit#gid=1309916983)
- [Week 14](#week-14-august-21---august-28)
- [Week 13](#week-13-august-14---august-21)
- [Week 12](#week-12-august-7---august-14)
- [Week 11](#week-11-july-31---august-7)
- [Week 10](#week-10-july-24---july-31)
- [Week 9](#week-9-july-17---july-24)
- [Week 8](#week-8-july-10---july-17)
- [Week 7](#week-7-july-5---july-10)
- [Week 6](#week-6-june-19---july-5)
- [Week 4](#week-4-june-12---june-19)
- [Week 3](#week-3-june-5---june-12)
- [Week 2](#week-2-may-28---june-5)
- [Week 1](#week-1-may-22---may-28)

---

## Week 14 (August 21 - August 28)

### Work in progress

- [x] Add descriptions for missing errors.
  - https://github.com/pyta-uoft/pyta/pull/311
  - https://github.com/pyta-uoft/website/pull/70
- [x] Errors provided as Python code blocks (E0241, E0704, W0211, E0202, C0112).
  - https://github.com/pyta-uoft/pyta/pull/312
  - https://github.com/pyta-uoft/website/pull/71
- [x] Use *we should* instead of *you should*.
- [x] All functions should contain docstrings describing what they do.
- [x] All comments should start with a capital.
- [x] Proof-read the remaining half (approx.) of the website.
- [x] Go back to "needs improvement" examples from the spreadsheet.
  - https://github.com/pyta-uoft/pyta/pull/313
  - https://github.com/pyta-uoft/website/pull/72
- ~Use [feature-fragments](https://css-tricks.com/choosing-right-markdown-parser/#feature-fragments) for cross-referencing errors. (e.g. [target][]).~
  - Does not work. For example: [week-1-may-22---may-28], [week-1-may-22---may-28][].

----

C0330 is (erroneously) tagging the following style as correct:

```python
def print_address(
    recipient: str,
    street: str,  # Error on this line: Wrong indentation
    city: str,  # Error on this line: Wrong indentation
    province: str,  # Error on this line: Wrong indentation
    country: str) -> None:  # Error on this line: Wrong indentation
    """Print the provided address in a clean format."""
    ...
```

and the following style as incorrect:

```python
def print_address(
      recipient: str,
      street: str,  # Error on this line: Wrong indentation
      city: str,  # Error on this line: Wrong indentation
      province: str,  # Error on this line: Wrong indentation
      country: str) -> None:  # Error on this line: Wrong indentation
    """Print the provided address in a clean format."""
    ...
```

**See**:
- <https://www.python.org/dev/peps/pep-0008/#indentation>
- <https://github.com/PyCQA/pylint/issues/741>


## Week 13 (August 14 - August 21)

### Pull requests

- [Travis CI tests](https://github.com/pyta-uoft/website/pull/69)
  1. Removed `gh-pages`.
  2. Fixed list markdown so that tests pass.
    - See PR message for more info.
- [PyTA Week 13](https://github.com/pyta-uoft/pyta/pull/310)
  - Remove TypeVar (just use `int`).
  - Add files to hold examples for new errors.
- [Website Week 13](https://github.com/pyta-uoft/website/pull/70)
  - Remove TypeVar (just use `int`).
  - Start adding descriptions of new error messages.
- Examine `W104` (pointless statement) vs `W106` (expression not assigned).
  - https://github.com/PyCQA/pylint/blob/master/pylint/checkers/base.py#L769

      ```python
      if (isinstance(expr, (astroid.Yield, astroid.Await, astroid.Call)) or
              (isinstance(node.parent, astroid.TryExcept) and
               node.parent.body == [node])):
          return
      if any(expr.nodes_of_class(astroid.Call)):
          self.add_message('expression-not-assigned', node=node,
                           args=expr.as_string())
      else:
          self.add_message('pointless-statement', node=node)
      ```
- Can't edit website wiki.
  - Added notes to the [wiki of my fork](https://github.com/ostrokach/website/wiki) instead.

### Work in progress

- [ ] Add descriptions for missing errors.
- [ ] Errors provided as Python code blocks (E0241, E0704, W0211, E0202, C0112).
- [ ] Use *we should* instead of *you should*.
- [ ] All functions should contain docstrings describing what they do.
- [ ] All comments should start with a capital.
- [ ] Proof-read the remaining half (approx.) of the website.
- [ ] Go back to "needs improvement" examples from the spreadsheet.
- Use [feature-fragments](https://css-tricks.com/choosing-right-markdown-parser/#feature-fragments) for cross-referencing errors. (e.g. [target][]).

---

## Week 12 (August 7 - August 14)

### Pull requests

From previous week:
- [pyta-uoft/pyta#306](https://github.com/pyta-uoft/pyta/pull/306)
  - Made the requiested changes.
- [pyta-uoft/website#67](https://github.com/pyta-uoft/website/pull/67)
  - No changes requested...

Added errors that are new to PyLint 1.7.2 to the [spreadsheet](https://docs.google.com/spreadsheets/d/1aNX6t_Edwqn9f9Y7gm8qCJeRuWyOPLvxAu9PF7TOOR8/edit#gid=1309916983).
- Added your toronto.edu email to the list of people who can edit, but would probably need your gmail address instead?
- Can't make the link editable because this README is public...
- **W0106**: Document as well?

    ```python
    lst = [1, 2, 3]
    lst.append(4), "This should not be here"  # Eror on this line
    ```

Week 12
- Only changes so far is for Travis CI to pass.
- [pyta-uoft/website#68](https://github.com/pyta-uoft/website/pull/68)

Travis CI
- A bug in remark-lint is leading to one failed test.
- [pyta-uoft/website#69](https://github.com/pyta-uoft/website/pull/69)



----

## Week 11 (July 31 - August 7)

### Pull requests

- [pyta-uoft/pyta#306](https://github.com/pyta-uoft/pyta/pull/306)
- [pyta-uoft/website#67](https://github.com/pyta-uoft/website/pull/67)

### Things to discuss

#### Typehint-related

- Is it really neccessary to document `self`?
  1. This is not done in the docstrings of popular packages (checked `numpy`, `pandas`).
  2. MyPy detects the correct type of `self` automatically.
      - See [`W0233_non_parent_init.py`](https://github.com/ostrokach/pyta/blob/typehints/examples/pylint/W0233_non_parent_init.py)

- OK to use generics with typehints?
  - For example, a function takes in a list of lists and returns one of the elements?

- `List[Any]` vs. `List[float]` vs. `List[int]`?
  - When it's not clear that the example should apply to floats only?
  - MyPy gives warning with `el: List[float] = [1.1, 2.1, 3.1]; running_sum = 0; for el in lst: running_sum += el`

- Should I include typehints for variables and attributes?
  - Get `Expression has type "Any"` errors (e.g.  [`E1136_unsubscriptable_object.py`](https://github.com/ostrokach/pyta/blob/typehints/examples/pylint/E1136_unsubscriptable_object.py), [`W0711_binary_op_exception.py`](https://github.com/ostrokach/pyta/blob/typehints/examples/pylint/W0711_binary_op_exception.py)) unless I set set `disallow_any = unimported, unannotated, decorated, generics` (note the missing `expr`) in the `mypy.ini` file.

- Ran into [some issues](https://github.com/PyCQA/pylint/issues/867) with PyLint and typehints, seem to be fixed in PyLint 1.7.1.

- Duplicate errors for Pylint and MyPy:

    - [E0102](http://www.cs.toronto.edu/~david/pyta/#E0102)
    - [E0103](http://www.cs.toronto.edu/~david/pyta/#E0103)
    - [E0104](http://www.cs.toronto.edu/~david/pyta/#E0104)
    - [E0108](http://www.cs.toronto.edu/~david/pyta/#E0108)
    - [E1101](http://www.cs.toronto.edu/~david/pyta/#E1101)
    - [E1102](http://www.cs.toronto.edu/~david/pyta/#E1102)
    - [E0211](http://www.cs.toronto.edu/~david/pyta/#E0211)
    - [W0222](http://www.cs.toronto.edu/~david/pyta/#W0222)
    - ...

- Would be nice if typehints were rendered in a different colour on the website.

#### Other

- Fixed `Unneccessary "else" after "return"` errors in several examples.
  - e.g. `C0121_singleton_comparison.py`

    ```python
    def square(number: float) -> Optional[float]:
      if number == None:  # Error on this line
          return None
      else:
          return number**2
    ```

- Keep line length under 80 chars in examples?

    ```python
    id = 100  # Error on this line: Redefining built-in 'id'

    def sum(a: float, b: float) -> float:  # Error on this line: Redefining built-in 'sum'
        return a - b  # D'oh
    ```

- Changed one-line docstrings to contain opening and closing `"""` on the same line (ref. [PEP257](https://www.python.org/dev/peps/pep-0257/#one-line-docstrings)).

- Period after title in docstrings (yes?).

- *we should* vs. *you should* (*you should*?)

- Errors provided as Python code blocks:

    - E0241
    - E0704
    - W0211
    - E0202
    - C0112

- Should all functions contain docstrings describing what they do?

- Should all comments start with a capital?

### To do

- Convert Python code snippets into error files for cases where errors are provided as Python code snippets.
- Proof-read the remaining half (approx.) of the website.
- Go back to "needs improvement" examples from the spreadsheet.
- Add descriptions for missing errors.

----

## Week 10 (July 24 - July 31)

### Fix issues with previous pull requests

- [pyta-uoft/pyta#297](https://github.com/pyta-uoft/pyta/pull/297)
  - Build still failing, although it seems to pass on my local machine?
  - I think I did rebase on the current PyTA `master` branch?

- [pyta-uoft/website#65](https://github.com/pyta-uoft/website/pull/65)
  - Some of the escape sequences only work in string literals. I included those escape sequences in the same table (not two tables like the Python documentation).
  - Table formating with the current style may not be ideal for presenting data (too much horizontal space; table is centered by default).
    <p align="center"><img width="80%" src="images/escape-sequence-table.png" /></p>

    Instead, I listed all escape patters in columns:

    <p align="center"><img width="80%" src="images/escape-sequence-table-3.png" /></p>

### In progress

#### Travis CI

- See [pyta-uoft/website#66](https://github.com/pyta-uoft/website/pull/66).
- Reconsider making `website` a subfolder in `pyta`?
  - This way the website could be rebuilt whenever either the examples or the website text get changed.
  - Don't have to clone `pyta` as a separate step in continuous integration.

#### Docstrings

Specifications (from email):

> 1. [ ] Every function *should* have a docstring.
> 2. [ ] One-sentence description should be on same line as """. No space after """.
> 3. [ ] Function annotations: https://www.python.org/dev/peps/pep-0484/#type-definition-syntax. (Pay special attention to forward references https://www.python.org/dev/peps/pep-0484/#forward-references.)
> 4. [ ] Need to import https://docs.python.org/3/library/typing.html. Use List[T], Dict[K, V], and Tuple[T1, T2, T3,...]

Type annotations for variables? ([PEP526](https://www.python.org/dev/peps/pep-0526/))

----

## Week 9 (July 17 - July 24)

### Progress

- 'Syntax errors'
  - [pyta-uoft/website#63](https://github.com/pyta-uoft/website/pull/63)
  - [pyta-uoft/pyta#295](https://github.com/pyta-uoft/pyta/pull/295)
  - Moved error examples into a separate `syntax_errors` folder.
  - Split 'Syntax errors' into two sections: **Syntax Error (E0001) {#E0001}** with subsections *1. SyntaxError: Missing parentheses in call to 'print'*, *2. SyntaxError: can't assign to literal*, *3. SyntaxError: invalid syntax* and **Indentation Error (E0002) {#E0002}** with subsections *1. IndentationError: unindent does not match any outer indentation level* and *2. IndentationError: unexpected indent*.
- 'Miscellaneous'
  - [pyta-uoft/website#64](https://github.com/pyta-uoft/website/pull/64)
  - [pyta-uoft/pyta#296](https://github.com/pyta-uoft/pyta/pull/296)
- 'Custom errors'
  - [pyta-uoft/website#65](https://github.com/pyta-uoft/website/pull/65)
  - [pyta-uoft/pyta#297](https://github.com/pyta-uoft/pyta/pull/297)

### Questions

- Maybe we could run the error code through the PyTA linter and display the error message together with PyTA comment and highlighting?
- Add travis tests for dead links?
- Add travis tests for Markdown code style (e.g. using [remark-lint](https://github.com/wooorm/remark-lint)). This includes checks for links that are defined at the bottom but are not used anywhere in the body.

----

## Week 8 (July 10 - July 17)

### Previous commits

- [Change example as discussed in meeting](https://github.com/pyta-uoft/pyta/pull/285/commits/da0da7f2b90badeacf5d199fdf0c64942054473d)

### Progress

- [website PR](https://github.com/pyta-uoft/website/pull/62)
- [PyTA PR](https://github.com/pyta-uoft/pyta/pull/288)
- I still maybe need another week to finish up this PR? I'm mostly happy with the changes that have been made already, but there are some errors that I still want to update.

### Questions

- OK to have links to error messages in inline format? For example, `[E1120](#E1120)`?
- Why is `super()` not used in CSC148?
- **Redundant unittest assert** - Examples are iffy because they don't import any code to be tested. But importing anything would probably fail unit tests?
- Syntax errors (at the end) are given as Python code blocks rather than being imported from a file.

----

## Week 7 (July 5 - July 10)

- Pull request for correcting the lists stylesheet and rephrasing Imports" errors:
  - [pyta-uoft/website#61](https://github.com/pyta-uoft/website/pull/61)
  - [pyta-uoft/pyta#285](https://github.com/pyta-uoft/pyta/pull/285)
- Reconsider changing function into inline code?:
  - [pyta-uoft/pyta#283](https://github.com/pyta-uoft/pyta/pull/283)

----

## Week 6 (June 19 - July 5)

### Progress

- Fix pull request from week 4:
  - [pyta-uoft/website#58](https://github.com/pyta-uoft/website/pull/58) (see commit [`ff58dee`](https://github.com/pyta-uoft/website/pull/58/commits/ff58dee))
  - [pyta-uoft/pyta#282](https://github.com/pyta-uoft/pyta/pull/282)
- Replace functions with code blocks in cases where the error does not happen for function arguments (e.g. `if not val <= 0: ...`). Add a better example for singleton comparison error (`if value == None: ...`):
  - [pyta-uoft/website#60](https://github.com/pyta-uoft/website/pull/60)
  - [pyta-uoft/pyta#283](https://github.com/pyta-uoft/pyta/pull/283)

### Questions

- Invalid constant name `number`, `number_category`, etc.
  - Tried inside `if __name__ == '__main__':` block, but get the same error.

----

## Week 4 (June 12 - June 19)

### ToDos from previous week

> Address issues in commits for week 3:
- https://github.com/pyta-uoft/website/pull/57

> Find a link to a website that talks about default parameters
- WIP:

### Progress

- Update **Code complexity** section of the website:
  - [Website PR](https://github.com/pyta-uoft/website/pull/58)
  - [PyTA PR](https://github.com/pyta-uoft/pyta/pull/258)
  - [Spreadsheet](https://docs.google.com/spreadsheets/d/1aNX6t_Edwqn9f9Y7gm8qCJeRuWyOPLvxAu9PF7TOOR8/edit?usp=sharing)
- Change the titles of each entry from `### CODE: Error description {Tag}` to `### Error description (CODE) {Tag}`"
  - [Website PR](https://github.com/pyta-uoft/website/pull/59)

### Questions

- Examples should be more standardized?
  - Common theme for all examples, e.g. statistics (`sum`, `mean(lst, skip_none=True)`, `count`, ...)?
  - Examples should have consistent docstrings?
  - Examples should be mostly correct with regard to other pylint errors (e.g. code discouraged by `R0102` in `C0113`, `C0121`, `W0125`).
- Maybe have everything in alphabetical order and build the table of contents based on tags?
  - Could have "see also" links below every error.

----

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

----

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

### Questions

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

----

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
