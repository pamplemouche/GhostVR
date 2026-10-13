.class public abstract LVh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Z

.field public C:LBd1;

.field public D:Lle1;

.field public E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LVh0;->w:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LVh0;->x:Ljava/lang/String;

    .line 4
    iput p5, p0, LVh0;->y:I

    .line 5
    iput p6, p0, LVh0;->z:I

    .line 6
    iput-object p3, p0, LVh0;->A:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, LVh0;->B:Z

    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 5

    .line 1
    iget-object p1, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->a()Z

    move-object p1, p0

    check-cast p1, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;

    .line 3
    iget-wide v3, p1, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;->F:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v3, v4, p1, p2}, LJ/N;->M79Biztn(JLjava/lang/Object;Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->a()Z

    move-object p1, p0

    check-cast p1, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;

    .line 6
    iget-wide v3, p1, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;->F:J

    cmp-long p2, v3, v1

    if-nez p2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v3, v4, p1, v0}, LJ/N;->M79Biztn(JLjava/lang/Object;Z)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p1, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->w:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    .line 10
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;->a()Z

    .line 11
    move-object p2, p0

    check-cast p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;

    .line 12
    iget-wide v3, p2, Lorg/chromium/chrome/browser/jsdialog/JavascriptTabModalDialog;->F:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {v3, v4, p2, p1}, LJ/N;->MboTlmne(JLjava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, LVh0;->D:Lle1;

    .line 15
    iput-object p1, p0, LVh0;->E:Lorg/chromium/chrome/browser/jsdialog/JavascriptDialogCustomView;

    .line 16
    iput-object p1, p0, LVh0;->C:LBd1;

    return-void
.end method

.method public b(Lle1;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LVh0;->C:LBd1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const-string p1, "Unexpected button pressed in dialog: "

    .line 2
    invoke-static {p1, p2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "JSModalDialog"

    invoke-static {v0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 3
    invoke-virtual {v0, p1, p2}, LBd1;->a(Lle1;I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0, p1, v1}, LBd1;->a(Lle1;I)V

    :goto_0
    return-void
.end method
