.class Landroidx/lifecycle/ViewModelProvider$FactoryWrapper;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$KeyedFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ViewModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryWrapper"
.end annotation


# instance fields
.field private final mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Landroidx/lifecycle/ViewModelProvider$FactoryWrapper;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 272
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Landroidx/lifecycle/ViewModelProvider$FactoryWrapper;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v0, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
