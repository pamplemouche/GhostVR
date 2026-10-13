.class public Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;
.super Landroid/widget/EditText;
.source "TranscriptionEditText.java"


# instance fields
.field private mPartialTextLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->mPartialTextLength:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->mPartialTextLength:I

    return-void
.end method

.method public updateTranscriptionText(Ljava/lang/String;Z)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->getSelectionStart()I

    move-result v0

    iget v1, p0, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->mPartialTextLength:I

    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->getSelectionEnd()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->mPartialTextLength:I

    return-void
.end method
