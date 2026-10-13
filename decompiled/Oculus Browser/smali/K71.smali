.class public abstract LK71;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lj71;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>(LI71;)V

    sput-object v0, LK71;->a:Lj71;

    return-void
.end method
