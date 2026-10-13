.class public LjA0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/Integer;

.field public final d:LZz0;

.field public e:LaA0;

.field public f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

.field public g:LiA0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LZz0;

    invoke-direct {v0}, LZz0;-><init>()V

    iput-object v0, p0, LjA0;->d:LZz0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;-><init>()V

    iput-object v0, p0, LjA0;->f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    .line 2
    new-instance v1, LfA0;

    invoke-direct {v1, p0}, LfA0;-><init>(LjA0;)V

    .line 3
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;->D0:LkA0;

    .line 4
    iget-object v0, p0, LjA0;->f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    iget-object v1, p0, LjA0;->g:LiA0;

    check-cast v1, LDA0;

    .line 5
    iget-object v1, v1, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 6
    iget-object v1, v1, Lz2;->N:LY2;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ls2;->a(LH2;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;II)V
    .locals 8

    .line 8
    iget-object v0, p0, LjA0;->d:LZz0;

    new-instance v7, LeA0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, LeA0;-><init>(LjA0;ILjava/lang/String;II)V

    .line 9
    iput-object v7, v0, LZz0;->d:Ljava/lang/Runnable;

    .line 10
    iget-object p1, v0, LZz0;->c:LEA0;

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {v0}, LZz0;->a()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, LEA0;->run()V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;-><init>()V

    .line 2
    iget-object v1, p0, LjA0;->e:LaA0;

    iget v2, v1, LaA0;->a:I

    .line 3
    iput-object v1, v0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->E0:LaA0;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, LjA0;->e:LaA0;

    .line 5
    new-instance v3, LhA0;

    invoke-direct {v3, p0, v2}, LhA0;-><init>(LjA0;I)V

    .line 6
    iput-object v3, v0, Lorg/chromium/chrome/browser/preferences/password/ExportErrorDialogFragment;->D0:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iget-object v2, p0, LjA0;->g:LiA0;

    check-cast v2, LDA0;

    .line 8
    iget-object v2, v2, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 9
    iget-object v2, v2, Lz2;->N:LY2;

    .line 10
    invoke-virtual {v0, v2, v1}, Ls2;->a(LH2;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget v0, p0, LjA0;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LjA0;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/ProgressBarDialogFragment;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/password/ProgressBarDialogFragment;-><init>()V

    .line 4
    new-instance v2, LgA0;

    invoke-direct {v2, p0}, LgA0;-><init>(LjA0;)V

    .line 5
    iput-object v2, v0, Lorg/chromium/chrome/browser/preferences/password/ProgressBarDialogFragment;->D0:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    iget-object v2, p0, LjA0;->d:LZz0;

    iget-object v3, p0, LjA0;->g:LiA0;

    check-cast v3, LDA0;

    .line 7
    iget-object v3, v3, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    .line 8
    iget-object v3, v3, Lz2;->N:LY2;

    .line 9
    iput-object v0, v2, LZz0;->a:Ls2;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v0, v3, v4}, Ls2;->a(LH2;Ljava/lang/String;)V

    .line 11
    new-instance v0, LEA0;

    new-instance v3, LXz0;

    invoke-direct {v3, v2}, LXz0;-><init>(LZz0;)V

    invoke-direct {v0, v1, v3}, LEA0;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, v2, LZz0;->c:LEA0;

    .line 12
    iget-object v1, v2, LZz0;->b:LWz0;

    check-cast v1, LFA0;

    .line 13
    iget-object v2, v1, LFA0;->a:Landroid/os/Handler;

    iget-wide v3, v1, LFA0;->b:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, LjA0;->d:LZz0;

    new-instance v1, LdA0;

    invoke-direct {v1, p0}, LdA0;-><init>(LjA0;)V

    .line 15
    iput-object v1, v0, LZz0;->d:Ljava/lang/Runnable;

    .line 16
    iget-object v1, v0, LZz0;->c:LEA0;

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {v0}, LZz0;->a()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1}, LEA0;->run()V

    :goto_0
    return-void
.end method
