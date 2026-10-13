.class public LaQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LaQ0;->w:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, LaQ0;->w:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
