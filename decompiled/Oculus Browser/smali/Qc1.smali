.class public LQc1;
.super LkW;
.source "PG"


# instance fields
.field public a:[Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Z

.field public final d:[Landroid/net/Uri;

.field public final synthetic e:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQc1;->e:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LQc1;->b:Landroid/content/Context;

    .line 3
    iput-boolean p3, p0, LQc1;->c:Z

    .line 4
    iput-object p4, p0, LQc1;->d:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, LQc1;->d:[Landroid/net/Uri;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, LQc1;->a:[Ljava/lang/String;

    .line 2
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v3, p0, LQc1;->d:[Landroid/net/Uri;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const-string v3, "file"

    .line 4
    iget-object v4, p0, LQc1;->d:[Landroid/net/Uri;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, LQc1;->a:[Ljava/lang/String;

    iget-object v4, p0, LQc1;->d:[Landroid/net/Uri;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, p0, LQc1;->a:[Ljava/lang/String;

    iget-object v4, p0, LQc1;->d:[Landroid/net/Uri;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 7
    :goto_1
    iget-object v3, p0, LQc1;->d:[Landroid/net/Uri;

    aget-object v3, v3, v2

    iget-object v4, p0, LQc1;->b:Landroid/content/Context;

    const-string v5, "_display_name"

    invoke-static {v3, v4, v5}, Lorg/chromium/base/ContentUriUtils;->a(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SelectFileDialog"

    const-string v2, "Unable to extract results from the content provider"

    .line 8
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LQc1;->e:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->a(Lorg/chromium/ui/base/SelectFileDialog;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, LQc1;->c:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, LQc1;->e:Lorg/chromium/ui/base/SelectFileDialog;

    .line 5
    iget-wide v1, v0, Lorg/chromium/ui/base/SelectFileDialog;->w:J

    .line 6
    iget-object v3, p0, LQc1;->a:[Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lorg/chromium/ui/base/SelectFileDialog;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    array-length v4, v3

    const-string v5, "Android.SelectFileDialogImgCount"

    .line 8
    invoke-static {v5, v4}, LfV;->b(Ljava/lang/String;I)V

    .line 9
    :cond_1
    invoke-static {v1, v2, v0, v3, p1}, LJ/N;->Mx1807vz(JLjava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, LQc1;->e:Lorg/chromium/ui/base/SelectFileDialog;

    .line 11
    iget-wide v1, v0, Lorg/chromium/ui/base/SelectFileDialog;->w:J

    .line 12
    iget-object v3, p0, LQc1;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-object p1, p1, v4

    .line 13
    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/chromium/ui/base/SelectFileDialog;->a(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
