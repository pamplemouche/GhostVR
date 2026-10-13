.class public Lez0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lez0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lez0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;

    .line 2
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    const-string v0, "https://payments.google.com/#paymentMethods"

    .line 3
    invoke-static {p1, v0}, Lp60;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
