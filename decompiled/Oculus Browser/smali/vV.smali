.class public final synthetic LvV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LNU;


# direct methods
.method public constructor <init>(LNU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LvV;->w:LNU;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LvV;->w:LNU;

    .line 1
    sget-object v1, Lorg/chromium/base/MemoryPressureListener;->a:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method
