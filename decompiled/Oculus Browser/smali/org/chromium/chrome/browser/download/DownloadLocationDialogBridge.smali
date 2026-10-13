.class public Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDd1;


# instance fields
.field public A:J

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Landroid/content/Context;

.field public w:J

.field public x:Lle1;

.field public y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

.field public z:LBd1;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;-><init>(J)V

    return-object v0
.end method

.method private destroy()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->z:LBd1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->x:Lle1;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, LBd1;->a(Lle1;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 8

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eq p2, p1, :cond_0

    .line 1
    iget-wide p1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    cmp-long v3, p1, v0

    if-eqz v3, :cond_c

    .line 2
    invoke-static {p1, p2, p0}, LJ/N;->MFRgsyUw(JLjava/lang/Object;)V

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    .line 4
    iget-object v3, p2, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->y:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lze;->getText()Landroid/text/Editable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p2, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->y:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    invoke-virtual {p2}, Lze;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, v2

    .line 6
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    .line 7
    iget-object v3, v3, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->z:Landroid/widget/Spinner;

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN70;

    .line 9
    :goto_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    .line 10
    iget-object v4, v4, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->A:Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v3, :cond_b

    .line 11
    iget-object v5, v3, LN70;->b:Ljava/lang/String;

    if-eqz v5, :cond_b

    if-nez p2, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    iget-wide v5, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_7

    .line 13
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget-object v1, v3, LN70;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 14
    invoke-static {v0, v1}, LJ/N;->M_a1HEOR(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget v0, v3, LN70;->e:I

    const/4 v1, 0x3

    const-string v5, "MobileDownload.Location.Dialog.DirectoryType"

    invoke-static {v5, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 16
    new-instance v0, Ljava/io/File;

    iget-object v1, v3, LN70;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-wide v5, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {v5, v6, p0, p2}, LJ/N;->M20MP4SB(JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 20
    :cond_6
    throw v2

    :cond_7
    :goto_4
    if-eqz v4, :cond_9

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_8

    .line 22
    invoke-static {p1, p2}, LJ/N;->MjS06q3K(Ljava/lang/Object;I)V

    goto :goto_6

    :cond_8
    throw v2

    .line 23
    :cond_9
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 24
    invoke-static {p2, p1}, LJ/N;->MjS06q3K(Ljava/lang/Object;I)V

    goto :goto_6

    :cond_a
    throw v2

    .line 25
    :cond_b
    :goto_5
    iget-wide p1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    cmp-long v3, p1, v0

    if-eqz v3, :cond_c

    .line 26
    invoke-static {p1, p2, p0}, LJ/N;->MFRgsyUw(JLjava/lang/Object;)V

    .line 27
    :cond_c
    :goto_6
    iput-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->x:Lle1;

    .line 28
    iput-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    return-void
.end method

.method public b(Lle1;I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->z:LBd1;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->z:LBd1;

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    :goto_0
    return-void
.end method

.method public showDialog(Lorg/chromium/ui/base/WindowAndroid;JILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->a(Lle1;I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->z:LBd1;

    .line 5
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    .line 6
    iput-wide p2, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->A:J

    .line 7
    iput p4, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->B:I

    .line 8
    iput-object p5, p0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->C:Ljava/lang/String;

    .line 9
    sget-object p1, Ld80;->a:Le80;

    .line 10
    new-instance p2, Lv80;

    invoke-direct {p2, p0}, Lv80;-><init>(Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;)V

    invoke-virtual {p1, p2}, Le80;->a(Lorg/chromium/base/Callback;)V

    return-void
.end method
