.class public LVg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LWg0;


# direct methods
.method public constructor <init>(LWg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVg0;->w:LWg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LVg0;->w:LWg0;

    .line 2
    invoke-virtual {v0}, LWg0;->a()V

    return-void
.end method
