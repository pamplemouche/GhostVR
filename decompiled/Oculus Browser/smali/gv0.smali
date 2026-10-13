.class public final synthetic Lgv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldw0;


# instance fields
.field public final a:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgv0;->a:Lyv0;

    return-void
.end method


# virtual methods
.method public a(LQu0;)V
    .locals 5

    iget-object v0, p0, Lgv0;->a:Lyv0;

    .line 1
    iget-object v1, v0, Lyv0;->K:LHu0;

    iget-object v2, v0, Lyv0;->V:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v2, v2, Lorg/chromium/payments/mojom/PaymentItem;->c:LT81;

    iget-object v3, v2, LT81;->b:Ljava/lang/String;

    iget-object v2, v2, LT81;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, LHu0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, LQu0;->H:Z

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1, p1}, Lyv0;->a(LCQ0;LCQ0;LCQ0;)Z

    return-void
.end method
