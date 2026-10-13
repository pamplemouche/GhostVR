.class public LGU0;
.super Ljava/lang/Exception;
.source "PG"


# instance fields
.field public final w:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-boolean p1, p0, LGU0;->w:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-boolean p1, p0, LGU0;->w:Z

    return-void
.end method
