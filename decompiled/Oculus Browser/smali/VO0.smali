.class public final synthetic LVO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZT0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/vr/VrModuleProvider;

.field public final b:Lil0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/vr/VrModuleProvider;Lil0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVO0;->a:Lorg/chromium/chrome/browser/vr/VrModuleProvider;

    iput-object p2, p0, LVO0;->b:Lil0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 12

    iget-object v0, p0, LVO0;->a:Lorg/chromium/chrome/browser/vr/VrModuleProvider;

    iget-object v1, p0, LVO0;->b:Lil0;

    .line 1
    iget-wide v2, v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 2
    iget-object p1, v1, Lil0;->d:Lmf1;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 4
    iput-object v3, v1, Lil0;->d:Lmf1;

    .line 5
    :cond_0
    iget-object p1, v1, Lil0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, v1, Lil0;->c:Lhl0;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2}, Lhl0;->a(Z)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v4, Lgl0;

    invoke-direct {v4, v1}, Lgl0;-><init>(Lil0;)V

    const v0, 0x7f1303e3

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lil0;->b:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 10
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v3, v1, Lil0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    const/16 v5, 0x58

    const v6, 0x7f08012d

    const v0, 0x7f130623

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f1301d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 13
    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v4, v1, Lil0;->d:Lmf1;

    if-eqz v4, :cond_3

    .line 15
    iget-object v4, v4, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 16
    iput-object v3, v1, Lil0;->d:Lmf1;

    .line 17
    :cond_3
    iget-object v1, v1, Lil0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const v3, 0x7f1303e5

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 20
    :goto_0
    iget-wide v1, v0, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a:J

    .line 21
    invoke-static {v1, v2, v0, p1}, LJ/N;->Mmw1DU8y(JLjava/lang/Object;Z)V

    :cond_5
    :goto_1
    return-void
.end method
