.class public final synthetic Ljw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lpw0;

.field public final x:Lfw0;

.field public final y:Ljava/lang/CharSequence;

.field public final z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lpw0;Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw0;->w:Lpw0;

    iput-object p2, p0, Ljw0;->x:Lfw0;

    iput-object p3, p0, Ljw0;->y:Ljava/lang/CharSequence;

    iput-object p4, p0, Ljw0;->z:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljw0;->w:Lpw0;

    iget-object v1, p0, Ljw0;->x:Lfw0;

    iget-object v2, p0, Ljw0;->y:Ljava/lang/CharSequence;

    iget-object v3, p0, Ljw0;->z:Ljava/lang/Integer;

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lpw0;->a(Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method
