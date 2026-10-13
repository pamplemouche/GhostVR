.class public final synthetic LFB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final w:Lrc;

.field public final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lrc;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFB0;->w:Lrc;

    iput-object p2, p0, LFB0;->x:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, LFB0;->w:Lrc;

    iget-object v0, p0, LFB0;->x:Ljava/lang/Runnable;

    .line 1
    invoke-virtual {p1}, Lz2;->E()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
