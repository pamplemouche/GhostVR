.class public abstract LXG;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LXG;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(LTG;LTG;)V
    .locals 0

    .line 1
    iget-object p0, p0, LTG;->b:LVG;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, LVG;->clone()LVG;

    move-result-object p0

    iput-object p0, p1, LTG;->b:LVG;

    :cond_0
    return-void
.end method
