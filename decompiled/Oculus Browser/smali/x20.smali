.class public Lx20;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LB20;

.field public final b:LAm0;


# direct methods
.method public constructor <init>(LB20;LAm0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx20;->a:LB20;

    .line 3
    iput-object p2, p0, Lx20;->b:LAm0;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
