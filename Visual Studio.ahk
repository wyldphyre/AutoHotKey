SetTitleMatchMode 2 ; title can contain the search text

;SetTimer, WatchActiveWindow, 300
;return

;WatchActiveWindow:
;SetTitleMatchMode 2 ; title can contain the search text
;IfWinActive, Microsoft Visual Studio
;    Suspend Off
;else
;    Suspend On
;return

#IfWinActive Microsoft Visual Studio

^!+F9::
SendInput {F10}
return

; Temporary shortcut for code refactoring
::/dc::
SendInput var Field = PropertySheet.AddComboBoxField(TermDefinition, ^v);{ENTER}
SendInput Field.Constrain(Record => {!}Record.Deleted);{ENTER}
SendInput return Field;

; Create a projector variant of a Helpers Add*Column using an entity in the clipboard
::/pac::
CopiedType = %clipboard%
StringSplit, Parts, CopiedType, "."
MethodName = Add%Parts2%%Parts3%Column
SendInput public static Exp.Data.GridColumnControl<%CopiedType%> %MethodName%<TContext>(this Exp.Data.GridTemplateControl<TContext> Template, Forge.Term.DefinitionContract TermDefinition, Func<TContext, %CopiedType%> Projector){Enter}
SendInput {RAW}  {
SendInput {ENTER}
SendInput return Template.AddCustomColumn<%CopiedType%>(TermDefinition, Projector, Field => Field.TextBlock.AddText(Field.Value.FormatTitle()));{ENTER}
SendInput {RAW}  }
SendInput {ENTER}
SendInput public static Exp.Data.GridColumnControl<%CopiedType%> %MethodName%<TContext>(this Exp.Data.GridTemplateControl<TContext> Template, Forge.Term.DefinitionContract TermDefinition, Func<TContext, IEnumerable<%CopiedType%>> Projector){ENTER}
SendInput {RAW}  {
SendInput {ENTER}
SendInput return Template.AddCustomColumn<%CopiedType%>(TermDefinition, Projector, Field => Field.TextBlock.AddText(Field.Value.FormatTitle()));{ENTER}
SendInput {RAW}  }
return

; Create an empty anonymous delegate for c#
::/+=::
SendInput {RAW} += () => {};
SendInput {LEFT}{LEFT}{LEFT}{LEFT}{ENTER}{RIGHT}{ENTER}{UP}{RIGHT}{ENTER}
return

; Replace >> with =>
;::>>::=>
;return

; Context shortcut macro
:*:/cc::
SendInput Context => Context
return

; create a Context => Context
:*:>>::
SendInput {BACKSPACE}
SendInput {Shift Down}{Control Down}{Left}{Shift Up}{Control Up}^c
SendInput ^v => ^v
return

; Start a region
::#r::
SendInput {RAW}#
SendInput region{SPACE}
return

; End a region
:*:#er::
SendInput {RAW}#endregion
return