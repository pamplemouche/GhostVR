.class public LJv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LMv0;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(LNv0;LMv0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, LJv0;->w:LMv0;

    iput-object p3, p0, LJv0;->x:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LJv0;->w:LMv0;

    check-cast v0, Lyv0;

    .line 2
    iget-object v0, v0, Lyv0;->M:Lc91;

    return-void
.end method
