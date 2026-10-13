.class public LPc1;
.super LkW;
.source "PG"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lorg/chromium/ui/base/WindowAndroid;

.field public c:LWc1;

.field public final synthetic d:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Ljava/lang/Boolean;Lorg/chromium/ui/base/WindowAndroid;LWc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LPc1;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p3, p0, LPc1;->b:Lorg/chromium/ui/base/WindowAndroid;

    .line 4
    iput-object p4, p0, LPc1;->c:LWc1;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v1, v0}, Lorg/chromium/ui/base/SelectFileDialog;->a(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "SelectFileDialog"

    const-string v2, "Cannot retrieve content uri from file"

    .line 3
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    iget-object v0, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    .line 3
    iput-object p1, v0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {v0}, Lorg/chromium/ui/base/SelectFileDialog;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, LPc1;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/SelectFileDialog;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    .line 9
    invoke-virtual {p1}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    iget-object v0, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    .line 13
    iget-object v0, v0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    const-string v1, "output"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    .line 17
    iget-object v1, v1, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    const-string v2, "images"

    .line 18
    invoke-static {v0, v2, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 20
    iget-object v0, p0, LPc1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, LPc1;->b:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v1, p0, LPc1;->c:LWc1;

    const v2, 0x7f1303a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, LPc1;->d:Lorg/chromium/ui/base/SelectFileDialog;

    .line 23
    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->a(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
