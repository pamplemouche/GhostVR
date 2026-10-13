.class public Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;
.super Landroid/widget/LinearLayout;
.source "KeyboardPanelView.java"


# static fields
.field private static REMOTE_INPUT_LAYOUT_TOP_MARGIN_LARGE:I = 0xa

.field private static REMOTE_INPUT_LAYOUT_TOP_MARGIN_SMALL:I = 0x6

.field private static TAG:Ljava/lang/String; = "KeyboardPanelView"


# instance fields
.field private mMainKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

.field private mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

.field private mRemoteInputKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

.field private mRemoteInputLayoutTopMargin:I

.field private mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

.field private mShowRemoteInput:Z

.field private mTranscriptionEditText:Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mShowRemoteInput:Z

    .line 25
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->TAG:Ljava/lang/String;

    const-string p2, "KeyboardView created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;)Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mTranscriptionEditText:Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    return-object p0
.end method


# virtual methods
.method public flipShifted()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getShifted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setShifted(Z)Z

    return-void
.end method

.method public getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    return-object v0
.end method

.method public getRemoteInputKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    return-object v0
.end method

.method public getRemoteInputLayoutTopMargin()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputLayoutTopMargin:I

    return v0
.end method

.method public getShowRemoteInput()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mShowRemoteInput:Z

    return v0
.end method

.method public getTranscriptionEditText()Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mTranscriptionEditText:Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    return-object v0
.end method

.method public initialize(Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;)V
    .locals 1

    .line 29
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$id;->keyboard_input_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    .line 30
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setOnKeyboardActionListener(Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;)V

    .line 32
    sget v0, Lcom/oculus/panelapp/keyboardv2/R$id;->keyboard_remote_input_sub_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    .line 33
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setOnKeyboardActionListener(Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;)V

    .line 35
    sget p1, Lcom/oculus/panelapp/keyboardv2/R$id;->keyboard_transcription_edittext:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mTranscriptionEditText:Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    return-void
.end method

.method public invalidateKey(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->invalidateKey(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    return-void
.end method

.method public setKeyboard(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;IZ)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v10, p7

    .line 52
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mTranscriptionEditText:Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    sget v2, Lcom/oculus/panelapp/keyboardv2/R$xml;->en_us_text_default_transcription_48:I

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ne v8, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->setVisibility(I)V

    .line 54
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mTranscriptionEditText:Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    new-instance v2, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;

    move-object/from16 v13, p6

    invoke-direct {v2, p0, v13}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView$1;-><init>(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v14, Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/oculus/panelapp/keyboardv2/Keyboard;-><init>(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    iput-object v14, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    .line 67
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v1, v10}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->setKeyToHighlight(I)V

    .line 70
    :cond_1
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    iget-object v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setKeyboard(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V

    if-eqz p8, :cond_2

    .line 74
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->en_us_text_default_transcription_48:I

    if-eq v8, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mShowRemoteInput:Z

    .line 77
    iget-boolean v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mShowRemoteInput:Z

    if-eqz v1, :cond_5

    .line 78
    new-instance v8, Lcom/oculus/panelapp/keyboardv2/Keyboard;

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    if-ne v9, v1, :cond_3

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->remote_input_48:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->remote_input_32:I

    :goto_2
    move v3, v1

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/oculus/panelapp/keyboardv2/Keyboard;-><init>(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    iput-object v8, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 88
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    if-ne v9, v2, :cond_4

    sget v2, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->REMOTE_INPUT_LAYOUT_TOP_MARGIN_LARGE:I

    goto :goto_3

    :cond_4
    sget v2, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->REMOTE_INPUT_LAYOUT_TOP_MARGIN_SMALL:I

    :goto_3
    iput v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputLayoutTopMargin:I

    .line 93
    iget v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputLayoutTopMargin:I

    invoke-virtual {v1, v12, v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    iget-object v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v2, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    iget-object v2, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputKeyboard:Lcom/oculus/panelapp/keyboardv2/Keyboard;

    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setKeyboard(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V

    .line 97
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v1, v12}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setVisibility(I)V

    goto :goto_4

    .line 99
    :cond_5
    iget-object v1, v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v1, v11}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public setRemoteInputKeyboard(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mRemoteInputSubView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setKeyboard(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V

    return-void
.end method

.method public setShifted(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->mMainkeyboardView:Lcom/oculus/panelapp/keyboardv2/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardView;->setShifted(Z)Z

    return-void
.end method
