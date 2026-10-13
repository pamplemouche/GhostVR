.class public LEl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIl0;


# instance fields
.field public final a:Z


# direct methods
.method public synthetic constructor <init>(LDl0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LwT;->c()LwT;

    move-result-object p1

    const-string v0, "force-enable-night-mode"

    invoke-virtual {p1, v0}, LwT;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, LEl0;->a:Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sput p1, LS8;->w:I

    :goto_1
    return-void
.end method


# virtual methods
.method public a(LHl0;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(LHl0;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LEl0;->a:Z

    return v0
.end method
