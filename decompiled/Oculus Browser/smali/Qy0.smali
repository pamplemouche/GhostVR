.class public LQy0;
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
    iput-object p1, p0, LQy0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LQy0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
