.class public abstract LS90;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LP90;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LP90;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP90;-><init>(LO90;)V

    sput-object v0, LS90;->a:LP90;

    return-void
.end method
