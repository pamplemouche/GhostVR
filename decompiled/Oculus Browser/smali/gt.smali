.class public final Lgt;
.super Landroid/os/AsyncTask;
.source "PG"


# static fields
.field public static final c:LJs;


# instance fields
.field public final a:Lcs;

.field public final b:LZr;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "FetchBitmapTask"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgt;->c:LJs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLZr;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Las;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Las;-><init>(Lgt;LYr;)V

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-static/range {v0 .. v5}, LTs;->a(Landroid/content/Context;Landroid/os/AsyncTask;Les;IIZ)Lcs;

    move-result-object p1

    iput-object p1, p0, Lgt;->a:Lcs;

    .line 4
    iput-object p5, p0, Lgt;->b:LZr;

    return-void
.end method

.method public static synthetic a(Lgt;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Landroid/net/Uri;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgt;->a:Lcs;

    aget-object p1, p1, v0

    check-cast v3, Lds;

    .line 4
    invoke-virtual {v3}, LXr;->A()Landroid/os/Parcel;

    move-result-object v4

    .line 5
    invoke-static {v4, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v3, v2, v4}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    nop

    .line 9
    sget-object p1, Lgt;->c:LJs;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "doFetch"

    aput-object v4, v3, v0

    const-class v0, Lcs;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 11
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to call %s on %s."

    .line 12
    invoke-virtual {p1, v0, v3}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lgt;->b:LZr;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Let;

    .line 4
    iput-object p1, v0, Let;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Let;->f:Z

    .line 6
    iget-object v1, v0, Let;->g:Lft;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lft;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, v0, Let;->d:Lgt;

    :cond_1
    return-void
.end method
