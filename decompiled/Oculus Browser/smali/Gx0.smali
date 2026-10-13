.class public LGx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public final synthetic w:LIx0;


# direct methods
.method public constructor <init>(LIx0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGx0;->w:LIx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, LGx0;->w:LIx0;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, LIx0;->C:Z

    .line 3
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    .line 4
    iget-object p1, p0, LGx0;->w:LIx0;

    invoke-virtual {p1}, LIx0;->dismiss()V

    :cond_1
    return-void
.end method
