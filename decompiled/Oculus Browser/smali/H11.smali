.class public LH11;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LH11;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LH11;
    .locals 1

    .line 1
    sget-object v0, LH11;->a:LH11;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LH11;

    invoke-direct {v0}, LH11;-><init>()V

    sput-object v0, LH11;->a:LH11;

    .line 3
    :cond_0
    sget-object v0, LH11;->a:LH11;

    return-object v0
.end method
