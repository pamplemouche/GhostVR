.class public LTt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRQ0;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LSt0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LTt0;->a:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, LJ/N;->MgAmKYAu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
