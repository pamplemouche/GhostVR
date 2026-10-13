.class public final synthetic LQ30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LS30;

.field public final x:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(LS30;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ30;->w:LS30;

    iput-object p2, p0, LQ30;->x:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LQ30;->w:LS30;

    iget-object v1, p0, LQ30;->x:Ljava/util/HashSet;

    .line 1
    iget-object v0, v0, LS30;->H:LrR0;

    .line 2
    iput-object v1, v0, LrR0;->c:Ljava/util/Set;

    .line 3
    invoke-virtual {v0}, LrR0;->d()V

    return-void
.end method
