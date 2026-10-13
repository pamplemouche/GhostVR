.class public Lpv0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpv0;->a:Lyv0;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lpv0;->a:Lyv0;

    .line 2
    iget-object p1, p1, Lyv0;->K:LHu0;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, LHu0;->a(I)V

    .line 4
    iget-object p1, p0, Lpv0;->a:Lyv0;

    const/4 p2, 0x1

    const-string v0, "Tab switch dismissed Payment Request UI."

    .line 5
    invoke-virtual {p1, v0, p2}, Lyv0;->a(Ljava/lang/String;I)V

    return-void
.end method
