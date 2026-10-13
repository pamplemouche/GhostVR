.class public LHb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LJb;


# direct methods
.method public constructor <init>(LJb;)V
    .locals 0

    .line 1
    iput-object p1, p0, LHb;->w:LJb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LHb;->w:LJb;

    invoke-virtual {v0}, LJb;->a()V

    return-void
.end method
