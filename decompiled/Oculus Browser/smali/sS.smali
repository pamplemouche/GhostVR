.class public LsS;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LuS;


# direct methods
.method public synthetic constructor <init>(LuS;LpS;)V
    .locals 0

    .line 1
    iput-object p1, p0, LsS;->w:LuS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LsS;->w:LuS;

    invoke-virtual {v0}, LuS;->a()V

    return-void
.end method
