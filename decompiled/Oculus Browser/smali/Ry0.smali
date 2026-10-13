.class public LRy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRy0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LRy0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, LRy0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
