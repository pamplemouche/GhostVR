.class public final synthetic LYt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:[[B

.field public final C:Ljava/util/Map;

.field public final D:Lorg/chromium/payments/mojom/PaymentItem;

.field public final E:Ljava/util/List;

.field public final F:Ljava/util/Map;

.field public final w:Leu0;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leu0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYt0;->w:Leu0;

    iput-object p2, p0, LYt0;->x:Ljava/lang/String;

    iput-object p3, p0, LYt0;->y:Ljava/lang/String;

    iput-object p4, p0, LYt0;->z:Ljava/lang/String;

    iput-object p5, p0, LYt0;->A:Ljava/lang/String;

    iput-object p6, p0, LYt0;->B:[[B

    iput-object p7, p0, LYt0;->C:Ljava/util/Map;

    iput-object p8, p0, LYt0;->D:Lorg/chromium/payments/mojom/PaymentItem;

    iput-object p9, p0, LYt0;->E:Ljava/util/List;

    iput-object p10, p0, LYt0;->F:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget-object v0, p0, LYt0;->w:Leu0;

    iget-object v1, p0, LYt0;->x:Ljava/lang/String;

    iget-object v2, p0, LYt0;->y:Ljava/lang/String;

    iget-object v3, p0, LYt0;->z:Ljava/lang/String;

    iget-object v4, p0, LYt0;->A:Ljava/lang/String;

    iget-object v5, p0, LYt0;->B:[[B

    iget-object v6, p0, LYt0;->C:Ljava/util/Map;

    iget-object v7, p0, LYt0;->D:Lorg/chromium/payments/mojom/PaymentItem;

    iget-object v8, p0, LYt0;->E:Ljava/util/List;

    iget-object v9, p0, LYt0;->F:Ljava/util/Map;

    .line 1
    invoke-virtual/range {v0 .. v9}, Leu0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/payments/mojom/PaymentItem;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
