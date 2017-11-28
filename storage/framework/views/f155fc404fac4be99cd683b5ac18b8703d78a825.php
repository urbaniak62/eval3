<?php $__env->startSection('content'); ?>
    <h1>my library</h1>
    <div class="well">
        <?php $__currentLoopData = $livre; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $liv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <h3><?php echo e($liv); ?></h3>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>