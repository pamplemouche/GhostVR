.class public Lv81;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PG"


# instance fields
.field public a:Landroid/net/Network;

.field public final synthetic b:LA81;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LA81;

    return-void
.end method

.method public synthetic constructor <init>(LA81;Ln81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv81;->b:LA81;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv81;->a:Landroid/net/Network;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lv81;->b:LA81;

    .line 3
    iget-object p2, p2, LA81;->g:Lo81;

    .line 4
    iget-object p2, p2, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_3

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lv81;->b:LA81;

    .line 6
    iget-object p2, p2, LA81;->g:Lo81;

    .line 7
    invoke-virtual {p2, p1}, Lo81;->c(Landroid/net/Network;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv81;->b:LA81;

    .line 2
    iget-object v0, v0, LA81;->g:Lo81;

    .line 3
    iget-object v0, v0, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lv81;->a(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    iput-object p1, p0, Lv81;->a:Landroid/net/Network;

    .line 7
    :cond_1
    invoke-static {p1}, LA81;->a(Landroid/net/Network;)J

    move-result-wide v4

    .line 8
    iget-object v0, p0, Lv81;->b:LA81;

    .line 9
    iget-object v0, v0, LA81;->g:Lo81;

    .line 10
    invoke-virtual {v0, p1}, Lo81;->a(Landroid/net/Network;)I

    move-result v6

    .line 11
    iget-object p1, p0, Lv81;->b:LA81;

    new-instance v0, Lq81;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lq81;-><init>(Lv81;JIZ)V

    .line 12
    invoke-virtual {p1, v0}, LA81;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lv81;->a(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, LA81;->a(Landroid/net/Network;)J

    move-result-wide v0

    .line 3
    iget-object p2, p0, Lv81;->b:LA81;

    .line 4
    iget-object p2, p2, LA81;->g:Lo81;

    .line 5
    invoke-virtual {p2, p1}, Lo81;->a(Landroid/net/Network;)I

    move-result p1

    .line 6
    iget-object p2, p0, Lv81;->b:LA81;

    new-instance v2, Lr81;

    invoke-direct {v2, p0, v0, v1, p1}, Lr81;-><init>(Lv81;JI)V

    .line 7
    invoke-virtual {p2, v2}, LA81;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lv81;->a(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, LA81;->a(Landroid/net/Network;)J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lv81;->b:LA81;

    new-instance v1, Ls81;

    invoke-direct {v1, p0, p1, p2}, Ls81;-><init>(Lv81;J)V

    .line 4
    invoke-virtual {v0, v1}, LA81;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv81;->a:Landroid/net/Network;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lv81;->b:LA81;

    new-instance v2, Lt81;

    invoke-direct {v2, p0, p1}, Lt81;-><init>(Lv81;Landroid/net/Network;)V

    .line 3
    invoke-virtual {v0, v2}, LA81;->a(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lv81;->a:Landroid/net/Network;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lv81;->a:Landroid/net/Network;

    .line 6
    iget-object v0, p0, Lv81;->b:LA81;

    .line 7
    iget-object v0, v0, LA81;->g:Lo81;

    .line 8
    invoke-static {v0, p1}, LA81;->a(Lo81;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object p1

    .line 9
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 10
    invoke-virtual {p0, v2}, Lv81;->onAvailable(Landroid/net/Network;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lv81;->b:LA81;

    invoke-virtual {p1}, LA81;->c()Lw81;

    move-result-object p1

    invoke-virtual {p1}, Lw81;->b()I

    move-result p1

    .line 12
    iget-object v0, p0, Lv81;->b:LA81;

    new-instance v1, Lu81;

    invoke-direct {v1, p0, p1}, Lu81;-><init>(Lv81;I)V

    .line 13
    invoke-virtual {v0, v1}, LA81;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
