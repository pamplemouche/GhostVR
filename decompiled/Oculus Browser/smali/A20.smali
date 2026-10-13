.class public LA20;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LB20;

.field public final b:LXR;


# direct methods
.method public constructor <init>(LB20;LXR;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LA20;->a:LB20;

    .line 3
    iput-object p2, p0, LA20;->b:LXR;

    return-void
.end method

.method public static a()LA20;
    .locals 1

    .line 1
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    invoke-virtual {v0}, LY60;->j()LA20;

    move-result-object v0

    return-object v0
.end method
