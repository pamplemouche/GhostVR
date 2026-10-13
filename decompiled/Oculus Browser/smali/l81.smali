.class public Ll81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lx81;


# instance fields
.field public final synthetic w:Lorg/chromium/net/NetworkChangeNotifier;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    .line 2
    iput p1, v0, Lorg/chromium/net/NetworkChangeNotifier;->e:I

    .line 3
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentDefaultNetId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/chromium/net/NetworkChangeNotifier;->a(IJ)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 5
    iget-object v0, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->a(J)V

    return-void
.end method

.method public a(JI)V
    .locals 1

    .line 4
    iget-object v0, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/NetworkChangeNotifier;->a(JI)V

    return-void
.end method

.method public a([J)V
    .locals 1

    .line 6
    iget-object v0, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a([J)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(I)V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Ll81;->w:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->b(J)V

    return-void
.end method
