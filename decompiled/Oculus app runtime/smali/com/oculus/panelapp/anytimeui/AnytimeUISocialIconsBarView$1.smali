.class Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;
.super Ljava/lang/Object;
.source "AnytimeUISocialIconsBarView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;->getMemberViews(Ljava/util/List;Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)I
    .locals 2

    .line 368
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->spawnLocation:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;

    iget-object v1, p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->spawnLocation:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    iget-object p2, p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 366
    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    check-cast p2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView$1;->compare(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)I

    move-result p1

    return p1
.end method
