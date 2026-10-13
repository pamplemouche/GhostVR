.class public Lzk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LDk0;


# direct methods
.method public constructor <init>(LDk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzk0;->w:LDk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzk0;->w:LDk0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, LDk0;->r:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {v0}, LDk0;->b()V

    return-void
.end method
