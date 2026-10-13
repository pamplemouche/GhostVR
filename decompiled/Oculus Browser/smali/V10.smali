.class public LV10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/bookmarks/BookmarkTextInputLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkTextInputLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV10;->w:Lorg/chromium/chrome/browser/bookmarks/BookmarkTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, LV10;->w:Lorg/chromium/chrome/browser/bookmarks/BookmarkTextInputLayout;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkTextInputLayout;->J:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkTextInputLayout;->J:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Ljava/lang/CharSequence;)V

    :cond_1
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
