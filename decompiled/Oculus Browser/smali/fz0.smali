.class public Lfz0;
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
    iput-object p1, p0, Lfz0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p1

    iget-object v0, p0, Lfz0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;

    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillEditorBase;->u0:Ljava/lang/String;

    .line 2
    iget-wide v1, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 3
    invoke-static {v1, v2, p1, v0}, LJ/N;->MSOj73VL(JLjava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lfz0;->w:Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;

    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;->a(Lorg/chromium/chrome/browser/preferences/autofill/AutofillServerCardEditor;)V

    return-void
.end method
