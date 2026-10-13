.class public Lof;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lpf;


# direct methods
.method public constructor <init>(Lpf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lof;->w:Lpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lof;->w:Lpf;

    const/4 v1, 0x0

    iput-object v1, v0, Lpf;->J:Lof;

    .line 2
    invoke-virtual {v0}, Lpf;->drawableStateChanged()V

    return-void
.end method
