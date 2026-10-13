.class public final synthetic Lhw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lpw0;

.field public final x:Lcw0;


# direct methods
.method public constructor <init>(Lpw0;Lcw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw0;->w:Lpw0;

    iput-object p2, p0, Lhw0;->x:Lcw0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhw0;->w:Lpw0;

    iget-object v1, p0, Lhw0;->x:Lcw0;

    .line 1
    invoke-virtual {v0, v1}, Lpw0;->a(Lcw0;)V

    return-void
.end method
