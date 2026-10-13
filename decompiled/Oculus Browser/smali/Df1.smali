.class public final synthetic LDf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LGf1;

.field public final x:Lorg/chromium/base/Callback;

.field public final y:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(LGf1;Lorg/chromium/base/Callback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDf1;->w:LGf1;

    iput-object p2, p0, LDf1;->x:Lorg/chromium/base/Callback;

    iput-object p3, p0, LDf1;->y:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LDf1;->w:LGf1;

    iget-object v1, p0, LDf1;->x:Lorg/chromium/base/Callback;

    iget-object v2, p0, LDf1;->y:Ljava/lang/Boolean;

    .line 1
    iget v3, v0, LGf1;->e:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, LGf1;->e:I

    .line 2
    invoke-interface {v1, v2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
