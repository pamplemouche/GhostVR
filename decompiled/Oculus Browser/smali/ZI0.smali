.class public abstract LZI0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/File;
.end method

.method public a(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LZI0;->a()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2}, LtH0;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Failed to delete TabState: "

    invoke-static {p2, p1}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TabState"

    invoke-static {v0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
